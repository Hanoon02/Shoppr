import React from "react";
import Portal from "../Components/loginPortal";

export default function LoginPage(){
    return(
        <div className={'grid grid-cols-2'}>
            <div className={'col-span-1'}>
                <div className={' bg-green-300 text-center h-full pt-[100px]'}>
                    <p className={'text-[50px] py-10 font-bold'}>Welcome to Shoppr</p>
                    <p className={'text-[25px]'}>Login to Continue</p>
                </div>
            </div>
            <div className={'col-span-1'}>
                <Portal />
            </div>
        </div>
    )
}