import React from "react";

export default function Info(){
    return(
        <div className={'bg-[#F6F3EF]'}>
            <div className={'flex w-screen'}>
                <img src={'https://media.istockphoto.com/id/911190112/photo/quadcopter-drone-with-4k-video-camera-flying-in-the-air.jpg?s=612x612&w=0&k=20&c=Dt8mbQjRDI09sl_Q2gaEdw88dDHi2627FzeKcXu0DOw='} alt={'info'} className={'h-[250px] w-1/5'}/>
                <img src={'https://img.freepik.com/premium-photo/white-headphones-paper-background-concept-music-festivals-radio-stations-music-lovers-minimal-style-greeting-card_99432-2746.jpg?w=2000'} alt={'info'} className={'h-[250px] w-1/5'}/>
                <img src={'https://cdn.shopify.com/s/files/1/0301/2263/9499/products/SA-RS5_main2-Large.jpg?v=1661342986'} alt={'info'} className={'h-[250px] w-1/5'}/>
                <img src={'https://c4.wallpaperflare.com/wallpaper/973/187/679/ps4-game-console-sony-playstation-4-wallpaper-preview.jpg'} alt={'info'} className={'h-[250px] w-1/5'}/>
                <img src={'https://cdn.wccftech.com/wp-content/uploads/2017/06/PIMAX-4K-VR-IMG_0542.jpg'} alt={'info'} className={'h-[250px] w-1/5'}/>
            </div>
            <div className={'py-10 flex justify-evenly items-center text-2xl text-[#BC4C2A]'}>
                <div className={'flex flex-col justify-center items-center'}>
                    <p>Worldwide Shipping</p>
                </div>
                <div className={'flex flex-col justify-center items-center'}>
                    <p>30 Day Return</p>
                </div>
                <div className={'flex flex-col justify-center items-center'}>
                    <p>12 Month Warranty</p>
                </div>
            </div>
        </div>
    )
}