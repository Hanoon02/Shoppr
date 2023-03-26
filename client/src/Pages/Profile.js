import React, {useContext, useEffect, useState} from "react";
import loginContext from "../Context/loginContext";
import NavBar from "../Components/NavBar";
import axios from "axios";
import OrderPreviewCard from "../Components/OrderPreviewCard";
import * as URL from "../Config/urls";

export default function ProfilePage(){
    const [orders, setOrders] = useState([]);
    const info = useContext(loginContext);
    const name = info.state.name;
    const username = info.state.username;
    const address = info.state.address;
    const id = info.state.id;

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
            <div>
                <NavBar />
            </div>
            <div className={'flex flex-col items-center justify-center'}>
                <p className={'text-2xl font-bold py-5'}>Profile</p>
                <div>
                    <img className={'h-[150px] w-[150px] rounded-full mb-5 border border-green-300 border-[5px]'} src={'https://w0.peakpx.com/wallpaper/233/587/HD-wallpaper-giga-chad-hair-memes.jpg'} alt={'profile'}/>
                </div>
                <div className={'flex flex-col items-center justify-center'}>
                    <div className={'flex text-xl'}><p className={'font-bold px-2'}>Name: </p><p> {name} </p></div>
                    <div className={'flex text-xl'}><p className={'font-bold px-2'}>Username: </p><p> {username}</p></div>
                    <div className={'flex text-xl'}><p className={'font-bold px-2'}>Address: </p><p> {address}</p></div>
                </div>
            </div>
            <div>
                <p className={'text-2xl pt-5 pl-5'}>Previous Orders</p>
                {orders.map((order) => (
                    <div className={'pt-4 px-4'}>
                        <OrderPreviewCard order={order} />
                    </div>
                ))}
            </div>
        </>
    )
}