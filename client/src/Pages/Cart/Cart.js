import React, {useContext, useEffect, useState} from "react";
import NavBar from "../../Components/App/NavBar";
import axios from "axios";
import loginContext from "../../Context/Login/loginContext";
import CartCard from "../../Components/Card/CartCard";

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
                    total += product.Price * product.Quantity;
                });
                setTotal(total);
                var nonEmptyProducts = [];
                res.data.forEach((product) => {
                    if(product.Quantity > 0) nonEmptyProducts.push(product);
                });
                setProducts(nonEmptyProducts);
            }
        }
        catch(err){
            console.error(err);
        }
    }

    const createOrder = async () => {
        try{
            const res = await axios.post('http://localhost:8800/orders/create', {
                params: {
                    id: id,
                    cost: total
                }
            });
            console.log(res);
        }
        catch(err){
            console.error(err);
        }
    }

    const clearCart = async () => {
        try{
            const res = await axios.put('http://localhost:8800/cart/clear', {
                params: {
                    id: id
                }
            });
            await fetchProducts();
        }
        catch(err){
            console.error(err);
        }
    }

    const handleCheckout = async () => {
        await createOrder();
        await clearCart();
    }

    return (
    <>
        <div>
            <NavBar />
        </div>
        {id === '' ? <div className={'text-center text-2xl font-bold pt-10'}>Please login to view your cart</div>:
        <div className={'flex flex-col justify-center items-center'}>
            <div className={'w-3/4'}>
                <div className={""}>
                <p className={"text-2xl font-bold text-center pt-10"}>Cart</p>
                {products.map((product) => (
                    <div className={"pt-4 px-[40px]"} onClick={()=>fetchProducts()}>
                        <CartCard product={product} />
                    </div>
                ))}
                </div>
                <hr className={'border border-black border-[0.75px] mt-4'}/>
                <div className={'text-xl flex justify-between items-center px-[80px] py-5'}>
                    <div className={'flex text-[26px]'}>Total:<p className={'px-2 italic text-[#BC4C2A]'}>${total}</p></div>
                    <div>
                        <button onClick={()=>handleCheckout()} className={'border border-1 border-[#BC4C2A] py-3 px-10 mt-2'}>Checkout</button>
                    </div>
                </div>
            </div>
        </div>}
    </>
  );
}