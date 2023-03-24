import React from "react";
import Portal from "../Components/loginPortal";

export default function LoginPage(){
    return(
        // eslint-disable-next-line react/style-prop-object
        <div className={'grid grid-cols-2 bg-gradient-to-b from-green-400 to-green-300'}>
            <div className={'col-span-1'}>
                <div className={' h-screen flex justify-center items-center flex-col'}>
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