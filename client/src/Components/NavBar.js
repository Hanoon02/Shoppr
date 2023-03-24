import React, {useContext} from "react";
import {Link} from "react-router-dom";
import loginContext from "../Context/loginContext";

export default function NavBar(){
    const info = useContext(loginContext);

    function handleLogout() {

    }

    return(
        <>
            <div className={'bg-green-300 h-[75px] flex justify-between items-center px-10'}>
                <div className={'flex items-center'}>
                    <p className={'text-2xl font-bold'}>Shoppr</p>
                </div>
                <div className={'flex items-center'}>
                    <p className={'text-xl px-2'}><Link to={'/cart'}>Cart</Link></p>
                    <p className={'text-xl px-2'}>{info.state.name}</p>
                    <p className={'text-lg px-5 font-bold'} onClick={()=> handleLogout()}>
                        <Link to={'/'}>
                            {info.state.name !== "" ? 'Logout' : 'Login'}
                        </Link>
                    </p>
                </div>
            </div>
        </>
    )
}