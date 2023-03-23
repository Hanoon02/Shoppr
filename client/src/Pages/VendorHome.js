import React, {useEffect, useState, useContext} from "react";
import NavBar from "../Components/NavBar";
import ProductCard from "../Components/ProductCard";
import loginContext from "../Context/loginContext";
export default function VendorHome() {
    const [allProducts, setAllProducts] = useState([]);
    const info = useContext(loginContext);
    useEffect(() => {
        fetchProducts();
    }, []);

    const fetchProducts = async () => {

    }

    return (
        <div>
            <div>
                <NavBar />
            </div>
            <div>
                <p className={'text-2xl font-bold text-center pt-10'}>Welcome to your Vendor Dashboard - {info.state.name}</p>
                <div className={'grid grid-cols-4 pt-4'}>
                    {allProducts.map((product) => (
                        <div className={'px-2 py-4'}><ProductCard product={product} /></div>
                    ))}
                </div>
            </div>
        </div>
    )
}