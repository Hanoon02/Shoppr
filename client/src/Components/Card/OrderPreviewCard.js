import React from "react";

export default function OrderPreviewCard({order, address}) {
    return(
        <>
            <div className={'border shadow-lg p-2 flex flex-col  '}>
                <div className={'flex flex-col justify-center items-center '}>
                    <p className={'text-[30px] px-2 text-[#BC4C2A]'}>${order.Order_Cost}</p><p>{order.Order_ID}</p>
                </div>
                <p className={'text-[20px] px-2'}> Delivery details:- </p>
                <p className={'text-[15px] px-2'}> {Math.floor(Math.random() * 10) + 1} days</p>
                <p className={'text-[15px] px-2'}> {address}</p>
                {/*<div className={'pr-4'}>*/}
                {/*    <button className={'text-white w-[220px] h-[50px] bg-[#BC4C2A] my-2 px-4 text-xl'}>View</button>*/}
                {/*</div>*/}
            </div>
        </>
    )
}