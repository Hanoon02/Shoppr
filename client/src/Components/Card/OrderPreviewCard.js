import React from "react";

export default function OrderPreviewCard({order}) {
    return(
        <>
            <div className={'border shadow-lg p-2 flex flex-col justify-center items-center '}>
                <div className={'flex flex-col justify-center items-center '}>
                    <p className={'text-[30px] px-2 text-[#BC4C2A]'}>${order.Order_Cost}</p><p>{order.Order_ID}</p>
                </div>
                <div className={'pr-4'}>
                    <button className={'text-white w-[220px] h-[50px] bg-[#BC4C2A] my-2 px-4 text-xl'}>View</button>
                </div>
            </div>
        </>
    )
}