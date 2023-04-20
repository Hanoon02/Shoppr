import React from "react";

export default function BestSellerCard({product}){
    return(
        <div>
            <div className={'grid content-center justify-center bg-[#F6F3EF] h-[450px] w-[300px] rounded-xl'}>
                <img  className={'h-[250px] w-[250px]'} src={'https://www.transparentpng.com/thumb/-iphone-x/YyUsvk-appleu-rough-spotthe-struggle-that-iphone.png'} alt={product.name} />
            </div>
            <div className={'flex flex-col justify-center items-center pt-5'}>
                <p>{product.name}</p>
                <p className={'text-[#BC4C2A] text-xl italic'}>${product.price}</p>
            </div>
        </div>
    )
}