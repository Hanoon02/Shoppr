import React from "react";
import Portal from "../Components/loginPortal";

export default function LoginPage(){
    return(
        // eslint-disable-next-line react/style-prop-object
        <div className={''}>
            <div className={'grid grid-cols-2'}>
                <div className={'col-span-1'}>
                    <div className={' h-screen flex justify-center items-center flex-col'}>
                        <div className={'text-[50px] py-10 font-bold flex'}>Welcome to <p className={'italic text-[#BC4C2A] px-2'}>Shoppr</p></div>
                        <p className={'text-[25px]'}>Login to Continue</p>
                    </div>
                </div>
                <div className={'col-span-1'}>
                    <Portal />
                </div>
            </div>
        </div>
    )
}