import React, {useContext, useEffect, useState} from "react";
import NavBar from "../Components/NavBar";
import ProductCard from "../Components/ProductCard";
import axios from "axios";
import loginContext from "../Context/loginContext";

export default function Cart() {
    const [products, setProducts] = useState([]);
    const info = useContext(loginContext);
    const id = info.state.id;

    useEffect(() => {
        fetchProducts();
    }, []);

    const fetchProducts = async () => {
        try{
            const res = await axios.get('http://localhost:8800/cart/products', {
                params: {
                    id: 0
                }
            });
            if(res.data.length > 0) setProducts(res.data);
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
            {products.map((product) => (
                <div className={"grid grid-cols-4 pt-4"}>
                    <ProductCard product={product} />
                </div>
            ))}
        </div>
    </>
  );
}