import React from "react";

export default function OrderPreviewCard({order}) {
    return(
        <>
            <div className={'border border-black p-2 flex justify-between items-center '}>
                <div className={'flex flex-col'}>
                    <p className={'text-xl'}>Order ID: {order.Order_ID}</p>
                    <p className={'text-xl'}>Total: {order.Order_Cost} $</p>
                </div>
                <div className={'pr-4'}>
                    <button className={'mr-5 bg-green-300 rounded-lg px-4 border border-black py-2 w-full'}>View</button>
                </div>
            </div>
        </>
    )
}