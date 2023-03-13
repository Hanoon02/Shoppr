import React from "react";
import Portal from "../Components/loginPortal";
export default function LoginPage(){
    return(
        <div className={'grid grid-cols-2'}>
            <div className={'col-span-1'}>
                <div className={' bg-stone-100 text-center h-full pt-[100px]'}>
                    <p className={'text-3xl py-10'}>Welcome</p>
                    <p className={'text-xl'}>Login to Continue</p>
                </div>
            </div>
            <div className={'col-span-1'}>
                <Portal />
            </div>
        </div>
    )
}