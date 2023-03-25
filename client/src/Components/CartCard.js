import React from "react";

export default function CartCard({product}) {
    return(
        <>
            <div className={'px-4 flex justify-between items-center p-2 rounded-2xl'}>
                <div className={'flex items-center'}>
                    <img className={'h-[75px] w-[75px] rounded-lg border border-black'} src={'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71hIfcIPyxS._SL1500_.jpg'} alt={'product'}/>
                    <div className={'flex flex-col items-start justify-center pl-5'}>
                        <p className={'text-lg '}>{product.Product_Name}</p>
                        <div className={'flex'}>
                            <p className={'text-lg font-bold'}>Quantity: </p>
                            <p className={'text-lg px-2'}>1</p>
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