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
            <div className={'bg-green-300 h-[75px] flex justify-between items-center px-10'}>
                <div className={'flex items-center'}>
                    <p className={'text-2xl font-bold'}>
                        {type==="customer" ? <Link to={'/home'}>Shoppr</Link> : <Link to={'/vendor'}>Shoppr</Link>}
                    </p>
                    <p className={'text-xl px-2'}>{info.state.name}</p>

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
        </>
    )
}