import React from "react";
import NavBar from "../../Components/App/NavBar";
import BestSeller from "./BestSeller";
import Highlights from "./Highlights";
import Info from "./Info";
import Footer from "../../Components/App/Footer";

export default function HomePage(){
    return(
        <div>
            <div>
                <NavBar />
            </div>
            <div>
                <div className={'flex flex-col justify-center items-center'}>
                    <div className={'absolute flex flex-col justify-center items-center'}>
                        <p className={'text-center text-[80px] font-bold '}>The best way to buy the products you love</p>
                    </div>
                    <img className={'h-[800px] w-full'} src={'https://wallpapercave.com/wp/wp2174648.jpg'} alt={'storebg'}/>
                </div>
            </div>
            <div>
                <BestSeller />
            </div>
            <div>
                <Highlights />
            </div>
            <div className={'pt-24'}>
                <Info />
            </div>
            <Footer />

        </div>
    )
}