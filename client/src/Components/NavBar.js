import React, {useContext, useState} from "react";
import {Link} from "react-router-dom";
import loginContext from "../Context/loginContext";
import {ReactComponent as CartSVG} from "../Assets/cart.svg";

export default function NavBar(){
    const info = useContext(loginContext);


    return(
        <>
            <div className={'bg-green-300 h-[75px] flex justify-between items-center px-10'}>
                <div className={'flex items-center'}>
                    <p className={'text-2xl font-bold'}><Link to={'/home'}>Shoppr</Link></p>
                    <p className={'text-xl px-2'}>{info.state.name}</p>

                </div>
                <div className={'flex items-center'}>
                    {info.state.name !== '' &&
                        <p className={'text-xl px-2'}><Link to={'/cart'}><CartSVG/></Link></p>
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