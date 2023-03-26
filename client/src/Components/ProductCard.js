import React, {useContext, useState} from "react";
import loginContext from "../Context/loginContext";
import axios from "axios";

export default function ProductCard({product}) {
    const [added, setAdded] = useState(false);
    const [quantity, setQuantity] = useState(1);
    const info = useContext(loginContext);
    const userID = info.state.id;
    const productID = product.Product_ID;

    const addToCart = async () => {
        if(info.state.name !== '') {
            try {
                const res = await axios.post('http://localhost:8800/cart/add',
                    {
                        params: {
                            userID: userID,
                            productID: productID,
                            quantity: quantity
                        }
                    });
                console.log(res.data);
            } catch (err) {
                console.error(err);
            }
        }
    }

    return (
        <div >
            {!added ?
                <div className={'flex flex-col items-center'} onClick={()=> setAdded(true)}>
                    <div className={'flex flex-col items-center'}>
                        <img className={'w-64 h-64 rounded-lg border border-[0.5px] border-black'} src={'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71hIfcIPyxS._SL1500_.jpg'} alt={product.Product_Name} />
                        <p className={'text-lg py-2'}>{product.Product_Name}</p>
                        <p className={'text-lg font-bold'}>{product.Price} $</p>
                    </div>
                </div>
            :
                <div className={'flex flex-col items-center pt-16'}>
                    <div className={'flex flex-col items-center justify-center'}>
                        <div className={'flex'}>
                            <button className={'bg-yellow-300 h-8 w-8 border border-black rounded-lg'} onClick={()=>{if(quantity!=1) setQuantity(quantity-1)}}>-</button>
                            <p className={'h-10 w-10 text-center pt-1'}>{quantity}</p>
                            <button className={'bg-yellow-300 h-8 w-8 border border-black rounded-lg'} onClick={()=>{if(quantity!=99) setQuantity(quantity+1)}}>+</button>
                        </div>
                        <button onClick={()=>{addToCart();setAdded(false); setQuantity(1)}} className={'bg-green-500 text-white rounded-lg px-4 py-2 font-bold my-4'}>Add to cart</button>
                        <button onClick={()=>{setAdded(false); setQuantity(1)}} className={'bg-red-500 text-white rounded-lg px-4 py-2 font-bold my-3'}>Cancel</button>
                    </div>
                </div>}
        </div>
    )
}