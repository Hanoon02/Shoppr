import React from "react";

export default function ProductCard({product}) {
    return (
        <div className={'flex flex-col items-center'}>
            <div className={'flex flex-col items-center'}>
                <img className={'w-64 h-64 rounded-lg border border-[0.5px] border-black'} src={'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71hIfcIPyxS._SL1500_.jpg'} alt={product.Product_Name} />
                <p className={'text-lg py-2'}>{product.Product_Name}</p>
                <p className={'text-lg font-bold'}>{product.Price} $</p>
            </div>
        </div>
    )
}