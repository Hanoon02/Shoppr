import React from "react";

export default function HighlightProduct({product}){
    return(
        <div className={'bg-[#F6F3EF] h-[500px] grid content-center justify-center'}>
            <div>
                <img  className={'h-[350px] w-[350px]'} src={'https://www.transparentpng.com/thumb/-iphone-x/YyUsvk-appleu-rough-spotthe-struggle-that-iphone.png'} alt={product.name} />
            </div>
            <div className={'flex flex-col justify-center items-center'}>
                <p>{product.name}</p>
                <p className={'text-[#BC4C2A] text-xl italic'}>${product.price}</p>
            </div>
        </div>
    )
}