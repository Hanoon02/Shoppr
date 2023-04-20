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
        <div>
            {!added ?
                <div className={'flex flex-col items-center'} onClick={()=> setAdded(true)}>
                    <div className={'flex flex-col items-center '}>
                        <div className={'rounded-xl grid content-center justify-center bg-[#F6F3EF] w-[300px] h-[400px]'}>
                            <img className={'w-[250px] h-[250px]'} src={'https://www.transparentpng.com/thumb/-iphone-x/YyUsvk-appleu-rough-spotthe-struggle-that-iphone.png'} alt={product.Product_Name} />
                        </div>
                    </div>
                </div>
            :
                <div className={'flex flex-col items-center'}>
                    <div className={'bg-[#F6F3EF] rounded-xl flex flex-col items-center h-[400px] justify-center w-[300px] pb-10'}>
                        <div className={'flex w-[220px] justify-between'}>
                            <button className={'bg-yellow-300 h-[50px] w-[80px] text-2xl'} onClick={()=>{if(quantity!=1) setQuantity(quantity-1)}}>-</button>
                            <p className={'h-[50px] w-[20px] text-center pt-3  text-xl'}>{quantity}</p>
                            <button className={'bg-yellow-300 h-[50px] w-[80px] text-2xl'} onClick={()=>{if(quantity!=99) setQuantity(quantity+1)}}>+</button>
                        </div>
                        <button onClick={()=>{addToCart();setAdded(false); setQuantity(1)}} className={'w-[220px] h-[70px] bg-green-500 px-4 text-xl'}>Add to cart</button>
                        <button onClick={()=>{setAdded(false); setQuantity(1)}} className={'w-[220px] h-[70px] bg-red-500 px-4  text-xl'}>Cancel</button>
                    </div>
                </div>}
            <div className={'flex flex-col items-center '}>
                <p className={'text-[20px] py-2'}>{product.Product_Name}</p>
                <p className={'text-[20px] italic font-bold text-[#BC4C2A]'}>${product.Price}</p>
            </div>
        </div>
    )
}