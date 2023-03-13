import React from "react";

export default function Portal(){
    return(
        <div className={'mx-[100px] mt-10'}>
            <div className={'pt-[100px]'}></div>
            <div className={'bg-blue-100 pl-10 py-10 rounded-lg border border-[0.5px] border-black'}>
                <div className={'py-2'}>
                    <p className={'pb-2'}>Username</p>
                    <input className={'w-3/4 py-1 rounded-lg border border-[0.5px] border-black'}></input>
                </div>
                <div className={'py-2'}>
                    <p className={'pb-2'}>Password</p>
                    <input className={'w-3/4 py-1 rounded-lg border border-[0.5px] border-black'}></input>
                </div>
                <div></div>
            </div>
            <div className={'py-10'}>
                <p className={'text-center'}>OR</p>
            </div>
            <div className={'pb-[250px] grid justify-items-center'}>
                <button className={'bg-blue-100 py-2 rounded-lg px-3 border border-[0.5px] border-black'}>I'm a vendor</button>
            </div>
        </div>
    )
}