import React, {useContext, useState} from "react";
import {Link} from "react-router-dom";
import loginContext from "../../Context/Login/loginContext";
import {ReactComponent as CartSVG} from "../../Assets/cart.svg";
import {ReactComponent as ProfileSVG} from "../../Assets/user.svg";

export default function NavBar(){
    const [currentTab, setCurrentTab] = useState(0);
    const info = useContext(loginContext);
    const type = info.state.type;

    const resetInfo = () => {
        info.update('', '', '', '', '', '');
    }

    return(
        <>
            <div className={'h-[75px] flex items-center justify-between  px-10'}>
                <div className={'text-[#BC4C2A] w-1/5'}>
                    <input type={'text'} placeholder={'Search...'} className={'border border-b-[#BC4C2A] border-white px-2 pb-2'}/>
                </div>
                <div className={'flex item-center justify-center italic w-3/5 '}>
                    <p className={'text-[40px] text-[#BC4C2A]'}>
                        {type==="customer" ? <Link to={'/home'}>Shoppr</Link> : <Link to={'/vendor'}>Shoppr</Link>}
                    </p>
                </div>
                <div className={'flex items-center justify-center w-1/5'}>
                    {info.state.name !== '' && type==="customer" &&
                        <>
                            <p className={'text-xl px-2'}><Link to={'/cart'}><CartSVG/></Link></p>
                            <p className={'text-xl px-2'}><Link to={'/profile'}><ProfileSVG/></Link></p>
                        </>
                    }
                    <p className={'text-lg font-bold pl-5'} onClick={()=>resetInfo()}>
                        <Link to={'/'}>
                            {info.state.name !== "" ? 'Logout' : 'Login'}
                        </Link>
                    </p>
                </div>
            </div>
            {info.state.type!=="vendor" ?
                <div className={'flex justify-center items-center pb-5 pt-2'}>
                    <div className={'flex justify-between items-center'}>
                        <div className={'text-xl px-3'}><Link to={'/home'}>
                            {currentTab===0 ? <p className={'text-[#BC4C2A] '}>Home</p> : <p onClick={()=>setCurrentTab(0)}>Home</p>}
                        </Link></div>
                        <div className={'text-xl px-3'}><Link to={'/shopall'}>
                            {currentTab===1 ? <p className={'text-[#BC4C2A] '}>Shop All</p> : <p onClick={()=>setCurrentTab(1)}>Shop All</p>}
                        </Link></div>
                        <div className={'text-xl px-3'}>
                            {currentTab===2 ? <p className={'text-[#BC4C2A] '}>Contact</p> : <p onClick={()=>setCurrentTab(3)}>Contact</p>}
                        </div>
                    </div>
                </div>
                :
                <div className={'flex justify-center items-center pb-5 pt-2'}>
                    <div className={'flex justify-between items-center'}>
                        <div className={'text-xl px-3'}><Link to={'/vendor'}>
                            {currentTab===0 ? <p className={'text-[#BC4C2A] '}>Products</p> : <p onClick={()=>setCurrentTab(0)}>Products</p>}
                        </Link></div>
                        <div className={'text-xl px-3'}>
                            {currentTab===1 ? <p className={'text-[#BC4C2A] '}>Reports</p> : <p onClick={()=>setCurrentTab(3)}>Reports</p>}
                        </div>
                    </div>
                </div>
            }
        </>
    )
}