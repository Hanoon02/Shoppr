import React from "react";
import Test from "./Test";

export default function Admin(){
    return(
        <>
            <div className={'flex flex-col justify-center items-center '}>
                <p className={'text-[30px] py-3 bg-[#F6F3EF] w-screen text-center'}>Admin</p>
                <div className={'w-3/4'}><Test/></div>
            </div>
        </>
    )
}