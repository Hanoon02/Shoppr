import React from "react";
import {Link} from "react-router-dom";
import BestSellerCard from "../../Components/BestSellerCard";
export default function BestSeller(){
    return(
        <>
            <div className={'flex flex-col justify-center items-center py-5'}>
                <p className={'text-[24px]'}>BEST SELLER</p>
            </div>
            <div className={'flex justify-evenly items-center pt-5'}>
                <BestSellerCard product={{name: 'Product 1', price: 100}}/>
                <BestSellerCard product={{name: 'Product 2', price: 200}}/>
                <BestSellerCard product={{name: 'Product 3', price: 300}}/>
            </div>
            <Link to={'/shopall'}><div className={' pt-10 flex items-center justify-center'}>
                <button className={'border border-1 border-[#BC4C2A] py-5 px-10'}>Shop All Items</button>
            </div></Link>
        </>
    )
}