import React from "react";
import NavBar from "../../Components/NavBar";
import BestSeller from "./BestSeller";
import Highlights from "./Highlights";
import Info from "./Info";
import Footer from "../../Components/Footer";

export default function HomePage(){
    return(
        <div>
            <div>
                <NavBar />
            </div>
            <div>
                <img className={'h-[800px] w-full'} src={'https://images6.alphacoders.com/108/1089136.jpg'} alt={'storebg'}/>
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
            <div>
                <Footer />
            </div>
        </div>
    )
}