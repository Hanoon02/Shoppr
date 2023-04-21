import React from "react";

export default function HighlightProduct({product}){
    return(
        <div className={'bg-[#F6F3EF] h-[450px] grid content-center justify-center'}>
            <div>
                <img  className={'h-[350px] w-[650px]'} src={'https://gmedia.playstation.com/is/image/SIEPDC/ps5-product-thumbnail-01-en-14sep21?$facebook$'} alt={product.name} />
            </div>
            <div className={'flex flex-col justify-center items-center'}>
                <p>{product.name}</p>
                <p className={'text-[#BC4C2A] text-xl italic'}>${product.price}</p>
            </div>
        </div>
    )
}