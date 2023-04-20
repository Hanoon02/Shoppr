import React from "react";

export default function Footer(){
    return(
        <div className={'flex justify-around pt-10 pb-3'}>
            <div className={'text-3xl text-[#BC4C2A]'}> Shoppr </div>
            <div className={'text-center'}>
                <p className={'py-2'}>Home</p>
                <p className={'py-2'}>Shop All</p>
                <p className={'py-2'}>Our Story</p>
                <p className={'py-2'}>Our Craft</p>
                <p className={'py-2'}>Contact</p>
            </div>
            <div className={'text-center'}>
                <p className={'py-2'}>FAQ</p>
                <p className={'py-2'}>Shipping & Returns</p>
                <p className={'py-2'}>Store Policy</p>
                <p className={'py-2'}>Payment Methods</p>
                <p className={'py-2'}>Stockists</p>
            </div>
            <div className={'text-center'}>
                <p className={'py-2'}>Instagram</p>
                <p className={'py-2'}>Facebook</p>
                <p className={'py-2'}>Twitter</p>
                <p className={'py-2'}>Pinterest</p>
            </div>
            <div className={'flex flex-col text-center'}>
                <p className={'text-2xl font-bold'}>JOIN US!</p>
                <p className={'py-2'}>Sign up for our newsletter</p>
                <input type={'text'} placeholder={'Email Address'}/>
                <button className={'border border-1 border-[#BC4C2A] py-2 my-4 px-10'}>Subscribe</button>
            </div>
        </div>
    )
}