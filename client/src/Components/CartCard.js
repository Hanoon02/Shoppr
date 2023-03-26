import React, {useContext} from "react";
import loginContext from "../Context/loginContext";
import axios from "axios";

export default function CartCard({product}) {
    const info = useContext(loginContext);
    const userID = info.state.id;

    const removeProduct = async () => {
        if(info.state.name!== '') {
            try {
                const res = await axios.delete(`http://localhost:8800/cart/remove`, {
                    params: {
                        productID: product.Product_ID,
                        cartID: userID
                    }
                });
                console.log(res.data);
            } catch (err) {
                console.error(err);
            }
        }
    }

    return(
        <>
            <div className={'px-4 flex justify-between items-center p-2 rounded-2xl'} onClick={()=>removeProduct()}>
                <div className={'flex items-center'}>
                    <img className={'h-[75px] w-[75px] rounded-lg border border-black'} src={'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71hIfcIPyxS._SL1500_.jpg'} alt={'product'}/>
                    <div className={'flex flex-col items-start justify-center pl-5'}>
                        <p className={'text-lg '}>{product.Product_Name}</p>
                        <div className={'flex'}>
                            <p className={'text-lg font-bold'}>Quantity: </p>
                            <p className={'text-lg px-2'}>{product.Quantity}</p>
                        </div>
                    </div>
                </div>
                <div className={'flex items-center '}>
                    <p className={'text-lg'}>{product.Price} $</p>
                </div>
            </div>
        </>
    )
}