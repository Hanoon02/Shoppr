import React, {useContext, useState} from "react";
import {Link} from "react-router-dom";
import loginContext from "../Context/loginContext";
import {ReactComponent as CartSVG} from "../Assets/cart.svg";
import {ReactComponent as ProfileSVG} from "../Assets/user.svg";

export default function NavBar(){
    const info = useContext(loginContext);
    const type = info.state.type;


    return(
        <>
            <div className={'h-[75px] flex justify-between items-center px-10'}>
                <div>
                    <input type={'text'} placeholder={'Search...'} className={'border border-black rounded-md px-2'}/>
                </div>
                <div className={'flex items-center'}>
                    <p className={'text-[40px] text-[#BC4C2A]'}>
                        {type==="customer" ? <Link to={'/home'}>Shoppr</Link> : <Link to={'/vendor'}>Shoppr</Link>}
                    </p>
                </div>
                <div className={'flex items-center'}>
                    {info.state.name !== '' && type==="customer" &&
                        <>
                            <p className={'text-xl px-2'}><Link to={'/cart'}><CartSVG/></Link></p>
                            <p className={'text-xl px-2'}><Link to={'/profile'}><ProfileSVG/></Link></p>
                        </>
                    }
                    <p className={'text-lg px-5 font-bold'}>
                        <Link to={'/'}>
                            {info.state.name !== "" ? 'Logout' : 'Login'}
                        </Link>
                    </p>
                </div>
            </div>
            <div className={'flex justify-center items-center pb-5 pt-2'}>
                <div className={'flex justify-between items-center'}>
                    <p className={'text-xl px-3'}><Link to={'/home'}>Home</Link></p>
                    <p className={'text-xl px-3'}><Link to={'/shopall'}>Shop All</Link></p>
                    <p className={'text-xl px-3'}>Our Story</p>
                    <p className={'text-xl px-3'}>Our Craft</p>
                    <p className={'text-xl px-3'}>Contact</p>
                </div>
            </div>
        </>
    )
}