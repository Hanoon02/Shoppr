import React, {useContext} from "react";
import loginContext from "../../Context/Login/loginContext";
import axios from "axios";

export default function CartCard({product}) {
    const info = useContext(loginContext);
    const userID = info.state.id;

    const removeProduct = async () => {
        if(info.state.name!== '') {
            try {
                const res = await axios.put(`http://localhost:8800/cart/remove`, {
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
            <div className={'px-4 flex justify-between items-center p-2 rounded-2xl'}>
                <div className={'flex items-center'}>
                    <img className={'h-[75px] w-[75px] rounded-lg border border-black'} src={'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71hIfcIPyxS._SL1500_.jpg'} alt={'product'}/>
                    <div className={'flex flex-col items-start justify-center pl-5'}>
                        <div className={'text-lg flex'}>
                            <p className={'text-[25px]'}>{product.Product_Name}</p>
                            <div className={'flex'}>
                                <div className={'flex px-2 italic text-[#BC4C2A] text-lg'}> X
                                    <p className={'text-lg px-1 font-bold text-[35px]'}>{product.Quantity}</p>
                                </div>
                            </div>
                        </div>
                        <div>
                            <button className={'text-white bg-black py-1 px-4 mt-2'} onClick={()=>removeProduct()}>Remove</button>
                        </div>
                    </div>
                </div>
                <div className={'flex items-center '}>
                    <p className={'text-lg italic text-[#BC4C2A] text-[26px]'}>${product.Price}</p>
                </div>
            </div>
        </>
    )
}