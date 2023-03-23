import React, {useState, useContext} from "react";
import axios from "axios";
import loginContext from "../Context/loginContext";
import {useNavigate} from "react-router-dom";

export default function Portal(){
    const [loggedIn, setLoggedIn] = useState(false);
    const [type, setType] = useState('customer');
    const info = useContext(loginContext);
    const navigation = useNavigate();

    const handleTypeToggle = (e) => {
        if(type === 'customer') setType('vendor');
        else setType('customer');
    }


    const userLogin = async (e) => {
        e.preventDefault();
        const username = e.target.username.value;
        const password = e.target.password.value;
        if(type === 'customer') {
            try {
                const res = await axios.get('http://localhost:8800/customer/login', {
                    params: {
                        username: username,
                        password: password
                    }
                });
                if (res.data.length > 0) {
                    info.update(res.data[0].Customer_Name, res.data[0].Customer_Username, res.data[0].Customer_Password, res.data[0].Customer_Address);
                    navigation('/home');
                } else setLoggedIn(true);
            } catch (err) {
                console.error(err);
            }
        }
        else{
            try {
                const res = await axios.get('http://localhost:8800/vendor/login', {
                    params: {
                        username: username,
                        password: password
                    }
                });
                if (res.data.length > 0) {
                    info.update(res.data[0].Vendor_Name, res.data[0].Vendor_Username, res.data[0].Vendor_Password, "");
                    navigation('/vendor');
                } else setLoggedIn(true);
            } catch (err) {
                console.error(err);
            }
        }
    }

    return(
        <div className={'mx-[100px] mt-10'}>
            <form onSubmit={userLogin}>
                <div className={'pt-[100px] pb-[10px]'}>
                    {type === 'customer' ? <p className={'text-[30px] font-bold'}>Customer Login</p> : <p className={'text-[30px] font-bold'}>Vendor Login</p>}
                    {loggedIn && <p className={'text-red-500 text-center'}>Invalid Username or Password</p>}
                </div>
                <div className={'bg-blue-100 pl-10 py-10 rounded-lg border border-[0.5px] border-black'}>
                    <div className={'py-2'}>
                        <p className={'pb-2'}>Username</p>
                        <input id={'username'} className={'w-3/4 py-1 rounded-lg border border-[0.5px] border-black pl-2'}/>
                    </div>
                    <div className={'py-2'}>
                        <p className={'pb-2'}>Password</p>
                        <input id={'password'} className={'w-3/4 py-1 rounded-lg border border-[0.5px] border-black pl-2'}/>
                    </div>
                    <div className={'pt-2'}>
                        <button className={'border border-black rounded-xl p-2'} type={"submit"}>
                            Login
                        </button>
                    </div>
                </div>
            </form>
            <div className={'py-10'}>
                <p className={'text-center'}>OR</p>
            </div>
            <div className={'pb-[250px] grid justify-items-center'}>
                <button className={'bg-blue-100 py-2 rounded-lg px-3 border border-[0.5px] border-black'} onClick={()=> handleTypeToggle()}>
                    {type==='customer' && <>I'm a vendor</>}
                    {type==='vendor' && <>I'm a customer</>}
                </button>
            </div>
        </div>
    )
}