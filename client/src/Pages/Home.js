import React, {useState, useEffect} from "react";
import axios from "axios";
import NavBar from "../Components/NavBar";
import ProductCard from "../Components/ProductCard";

export default function HomePage(){
    const [allProducts, setAllProducts] = useState([]);
    useEffect(() => {
        fetchBooks();
    }, []);

    const fetchBooks = async () => {
        try{
            const res = await axios.get('http://localhost:8800/products');
            setAllProducts(res.data);
        }
        catch(err){
            console.error(err);
        }
    }

    return(
        <div>
            <div>
                <NavBar />
            </div>
            <div className={'grid grid-cols-4 pt-4'}>
                {allProducts.map((product) => (
                    <div className={'px-2 py-4'}><ProductCard product={product} /></div>
                ))}
            </div>
        </div>
    )
}