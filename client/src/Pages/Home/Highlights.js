import React from "react";
import HighlightProduct from "../../Components/Card/HighlightProduct";
import HighlightCategory from "../../Components/Card/HighlightCategory";

export default function Highlights(){
    return(
        <>
            <div className={'grid grid-cols-2 pt-10'}>
                <HighlightProduct product={{name:"Iphone", price:"5000"}}/>
                <HighlightCategory category={{name:"Laptops"}}/>
                <HighlightCategory category={{name:"Mobiles"}}/>
                <HighlightProduct product={{name:"Mac", price:"5000"}}/>
            </div>
        </>
    )
}