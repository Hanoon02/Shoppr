import React, {useContext, useEffect, useState} from "react";
import NavBar from "../Components/NavBar";
import axios from "axios";
import loginContext from "../Context/loginContext";
import CartCard from "../Components/CartCard";

export default function Cart() {
    const [products, setProducts] = useState([]);
    const [total, setTotal] = useState(0);
    const info = useContext(loginContext);
    const id = info.state.id;

    useEffect(() => {
        fetchProducts();
    }, []);

    const fetchProducts = async () => {
        try{
            const res = await axios.get('http://localhost:8800/cart/products', {
                params: {
                    id: id
                }
            });
            if(res.data.length > 0) {
                var total = 0;
                res.data.forEach((product) => {
                    total += product.Price;
                });
                setTotal(total);
                setProducts(res.data);
            }
        }
        catch(err){
            console.error(err);
        }
    }
    return (
    <>
        <div>
            <NavBar />
        </div>
        <div className={""}>
            <p className={"text-2xl font-bold text-center pt-10"}>Cart</p>
            <p className={'pl-[20px] text-xl'}> Your Items: </p>
            {products.map((product) => (
                <div className={"pt-4 px-[40px]"}>
                    <CartCard product={product} />
                </div>
            ))}
        </div>
        <hr className={'border border-black mx-[150px] mt-8'}/>
        <div className={'text-xl flex justify-between items-center px-[80px]'}>
            <p>Total:</p>
            <div>
                <p className={'pt-5'}>{total} $</p>
                <button className={'bg-black text-white text-xl font-bold px-4 rounded-lg mt-4'}>Checkout</button>
            </div>
        </div>
    </>
  );
}