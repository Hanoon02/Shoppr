import React, {useContext, useState} from "react";
import loginContext from "../../Context/Login/loginContext";
import NavBar from "../../Components/App/NavBar";
import MyOrders from "./MyOrders";
import MyAccount from "./MyAccount";

export default function ProfilePage(){
    const [currentTab, setCurrentTab] = useState(0);
    const info = useContext(loginContext);
    const name = info.state.name;
    const id = info.state.id;

    return(
        <>
            <div>
                <NavBar />
            </div>
            {id!== '' ?
                <div className={'flex justify-center items-center'}>
                    <div className={'w-3/4'}>
                        <div className={'flex flex-col justify-end items-start'}>
                            <div className={'absolute flex pl-5'}>
                                <img className={'h-[100px] w-[100px] rounded-full mb-5 border border-white border-[1px]'} src={'https://w0.peakpx.com/wallpaper/233/587/HD-wallpaper-giga-chad-hair-memes.jpg'} alt={'profile'}/>
                                <p className={'text-[40px] pl-5 pt-5 text-white'}>{name}</p>
                            </div>
                            <img src={'https://4kwallpapers.com/images/wallpapers/macos-big-sur-apple-layers-fluidic-colorful-dark-wwdc-2020-3440x1440-1432.jpg'} alt={'profile'} className={'w-full h-[300px] object-cover'}/>
                        </div>
                        <div className={'flex '}>
                            <div className={'px-3 text-[20px]'} onClick={()=>setCurrentTab(0)}>
                                {currentTab === 0 && <hr className={'border-[#BC4C2A] border-[2px] w-full'} />}
                                <p className={'pt-1'}>My Orders</p>
                            </div>
                            <div className={'px-3 text-[20px]'} onClick={()=>setCurrentTab(1)}>
                                {currentTab === 1 && <hr className={'border-[#BC4C2A] border-[2px] w-full'} />}
                                <p className={'pt-1'}>My Addresses</p>
                            </div>
                            <div className={'px-3 text-[20px]'} onClick={()=>setCurrentTab(2)}>
                                {currentTab === 2 && <hr className={'border-[#BC4C2A] border-[2px] w-full'} />}
                                <p className={'pt-1'}>My Wallet</p>
                            </div>
                            <div className={'px-3 text-[20px]'} onClick={()=>setCurrentTab(3)}>
                                {currentTab === 3 && <hr className={'border-[#BC4C2A] border-[2px] w-full'} />}
                                <p className={'pt-1'}>My Subscription</p>
                            </div>
                            <div className={'px-3 text-[20px]'} onClick={()=>setCurrentTab(4)}>
                                {currentTab === 4 && <hr className={'border-[#BC4C2A] border-[2px] w-[100px]'} />}
                                <p className={'pt-1'}>My Account</p>
                            </div>
                        </div>
                        {currentTab === 0 && <MyOrders />}
                        {currentTab === 1 && <p></p>}
                        {currentTab === 2 && <p></p>}
                        {currentTab === 3 && <p></p>}
                        {currentTab === 4 && <MyAccount />}
                    </div>
                </div>
            :
                <div className={'flex justify-center items-center'}>
                    <div className={''}>
                        <div>
                            <p className={'text-2xl pt-10'}>Please login to view profile</p>
                        </div>
                    </div>
                </div>
            }

        </>
    )
}