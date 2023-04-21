import React from "react";

export default function BestSellerCard({product}){
    return(
        <div>
            <div className={'grid content-center justify-center bg-[#F6F3EF] h-[450px] w-[300px] rounded-xl'}>
                <img  className={'h-[250px] w-[250px]'} src={'https://assets.stickpng.com/thumbs/62fbbfaf342f1f906d378073.png'} alt={product.name} />
            </div>
            <div className={'flex flex-col justify-center items-center pt-5'}>
                <p>{product.name}</p>
                <p className={'text-[#BC4C2A] text-xl italic'}>${product.price}</p>
            </div>
        </div>
    )
}