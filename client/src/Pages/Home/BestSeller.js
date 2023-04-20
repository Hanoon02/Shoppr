import React from "react";
import {Link} from "react-router-dom";
import BestSellerCard from "../../Components/BestSellerCard";
export default function BestSeller(){
    return(
        <>
            <div className={'flex flex-col justify-center items-center py-5'}>
                <p className={'text-[40px]'}>BEST SELLER</p>
            </div>
            <div className={'flex justify-evenly items-center pt-5'}>
                <BestSellerCard product={{name: 'Iphone 11', price: 1000}}/>
                <BestSellerCard product={{name: 'Iphone 12', price: 2000}}/>
                <BestSellerCard product={{name: 'Iphone 13', price: 3000}}/>
            </div>
            <Link to={'/shopall'}><div className={' pt-10 flex items-center justify-center'}>
                <button className={'border border-1 border-[#BC4C2A] py-5 px-10'}>Shop All Items</button>
            </div></Link>
        </>
    )
}