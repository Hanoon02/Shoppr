import React from "react";
import {Link} from "react-router-dom";

export default function NavBar(){
    return(
        <>
            <div className={'bg-green-300 h-[75px] flex justify-between items-center px-10'}>
                <div className={'flex items-center'}>
                    <p className={'text-2xl font-bold'}>Shoppr</p>
                </div>
                <div className={'flex items-center'}>
                    <p className={'text-lg px-5'}>Categories</p>
                    <p className={'text-lg px-5'}>Deals</p>
                    <p className={'text-lg px-5 font-bold'}>
                        <Link to={'/'}>Log Out</Link>
                    </p>
                </div>
            </div>
        </>
    )
}