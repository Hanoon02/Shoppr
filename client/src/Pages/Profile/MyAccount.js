import React, {useContext} from "react";
import loginContext from "../../Context/Login/loginContext";

export default function MyAccount() {
    const info = useContext(loginContext);
    const name = info.state.name;
    const username = info.state.username;
    const password = info.state.password;
    const address = info.state.address;

    return(
        <>
            <div className={''}>
                <p className={'text-2xl py-5 pl-5'}>My Profile</p>
                {/*<div>*/}
                {/*    <img className={'h-[150px] w-[150px] rounded-full mb-5 border border-[#BC4C2A] border-[5px]'} src={'https://w0.peakpx.com/wallpaper/233/587/HD-wallpaper-giga-chad-hair-memes.jpg'} alt={'profile'}/>*/}
                {/*</div>*/}
                <div className={''}>
                    <div className={'flex text-xl'}><p className={'font-bold px-2'}>Name: </p><p> {name} </p></div>
                    <div className={'flex text-xl'}><p className={'font-bold px-2'}>Username: </p><p> {username}</p></div>
                    <div className={'flex text-xl'}><p className={'font-bold px-2'}>Password: </p><p> {password}</p></div>
                    <div className={'flex text-xl'}><p className={'font-bold px-2'}>Address: </p><p> {address}</p></div>
                </div>
            </div>
        </>
    )
}