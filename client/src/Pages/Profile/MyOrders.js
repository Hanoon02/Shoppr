import React, {useContext, useEffect, useState} from "react";
import axios from "axios";
import * as URL from "../../Config/urls";
import loginContext from "../../Context/Login/loginContext";
import OrderPreviewCard from "../../Components/Card/OrderPreviewCard";

export default function MyOrders(){
    const [orders, setOrders] = useState([]);
    const info = useContext(loginContext);
    const id = info.state.id;
    const address = info.state.address;

    useEffect(() => {
        fetchOrders();
    }, []);

    const fetchOrders = async () => {
        try{
            const res = await axios.get(URL.GET_ORDERS, {
                params: {
                    user: id
                }
            });
            setOrders(res.data);
        }
        catch(err){
            console.error(err);
        }
    }
    return(
        <>
            <div className={'pb-10'}>
                <p className={'text-2xl pt-5 pl-5'}>My Orders</p>
                <div className={'grid grid-cols-2'}>{orders.map((order) => (
                    <div className={'pt-4 px-4'}>
                        <OrderPreviewCard order={order} address={address} />
                    </div>
                ))}</div>
            </div>
        </>
    )
}