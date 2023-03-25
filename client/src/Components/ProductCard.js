import React, {useContext} from "react";
import loginContext from "../Context/loginContext";
import axios from "axios";

export default function ProductCard({product}) {
    const info = useContext(loginContext);
    const userID = info.state.id;
    const productID = product.id;

    const addToCart = async () => {
        const data = {
            cartID: userID,
            productID: productID
        }

        try{
            const res = await axios.post('http://localhost:8800/cart/add', data);
            console.log(res);
        }
        catch(err){
            console.error(err);
        }
    }

    return (
        <div className={'flex flex-col items-center'} onClick={()=>addToCart()}>
            <div className={'flex flex-col items-center'}>
                <img className={'w-64 h-64 rounded-lg border border-[0.5px] border-black'} src={'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71hIfcIPyxS._SL1500_.jpg'} alt={product.Product_Name} />
                <p className={'text-lg py-2'}>{product.Product_Name}</p>
                <p className={'text-lg font-bold'}>{product.Price} $</p>
            </div>
        </div>
    )
}