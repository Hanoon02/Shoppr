import React, {useState, useContext} from "react";
import axios from "axios";
import loginContext from "../Context/loginContext";
import {useNavigate} from "react-router-dom";

export default function Portal(){
    const [loggedIn, setLoggedIn] = useState(false);
    const [type, setType] = useState('customer');
    const [signup, setSignup] = useState(false);

    const info = useContext(loginContext);
    const navigation = useNavigate();

    const handleTypeToggle = (e) => {
        if(type === 'customer') setType('vendor');
        else setType('customer');
    }

    const handlePortalToggle = (e) => {
        if(signup) setSignup(false);
        else setSignup(true);
    }

    const handleLoginSubmit = async (e) => {
        e.preventDefault();
        const username = e.target.username.value;
        const password = e.target.password.value;
        await userLogin(username, password);
    }

    const userSignup = async (username, password, name, address) => {
        const id = Math.floor(Math.random() * 1000000000);
        const payment = Math.floor(Math.random() * 1000000000);
        const res = await axios.post('http://localhost:8800/customer/signup', {
            params: {
                id: id,
                name: name,
                username: username,
                password: password,
                address: address,
                payment: payment
            }
        });
    }


    const handleSignupSubmit = async (e) => {
        e.preventDefault();
        const name = e.target.name.value;
        const username = e.target.username.value;
        const password = e.target.password.value;
        const address = e.target.address.value;
        await userSignup(name, username, password, address);
        await userLogin(username, password);
    }

    const userLogin = async (username, password) => {
        if(type === 'customer') {
            try {
                const res = await axios.get('http://localhost:8800/customer/login', {
                    params: {
                        username: username,
                        password: password
                    }
                });
                if (res.data.length > 0) {
                    info.update(res.data[0].Customer_ID, res.data[0].Customer_Name, res.data[0].Customer_Username, res.data[0].Customer_Password, res.data[0].Customer_Address);
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
                    info.update(res.data[0].Vendor_ID, res.data[0].Vendor_Name, res.data[0].Vendor_Username, res.data[0].Vendor_Password, "");
                    navigation('/vendor');
                } else setLoggedIn(true);
            } catch (err) {
                console.error(err);
            }
        }
    }

    return(
        <div className={'mx-[100px] mt-10'}>
            <div className={'pt-[100px] pb-[10px]'}>
                <div className={'flex'}>
                    {!signup ?
                        type === 'customer' ? <p className={'text-[30px] font-bold'}>Customer Login</p> : <p className={'text-[30px] font-bold'}>Vendor Login</p>
                        :
                        type === 'customer' ? <p className={'text-[30px] font-bold'}>Customer Signup</p> : <p className={'text-[30px] font-bold'}>Vendor Signup</p>
                    }
                    <button className={'border border-black px-4 py-2 rounded-md ml-5'} onClick={handlePortalToggle}>{signup ? 'Login' : 'Signup'}</button>
                </div>
                {loggedIn && <p className={'text-red-500 text-center'}>Invalid Username or Password</p>}
            </div>
            {!signup ?
                <form onSubmit={handleLoginSubmit}>
                    <div className={' bg-green-100 pl-10 py-10 rounded-lg border border-[0.5px] border-black'}>
                        <div className={'py-2 pr-10'}>
                            <p className={'pb-2'}>Username</p>
                            <input id={'username'} className={'w-full py-1 rounded-lg border border-[0.5px] border-black pl-2'}/>
                        </div>
                        <div className={'py-2 pr-10'}>
                            <p className={'pb-2'}>Password</p>
                            <input id={'password'} type={'password'} className={'w-full py-1 rounded-lg border border-[0.5px] border-black pl-2'}/>
                        </div>
                        <div className={'flex justify-center items-center pt-2 pr-10'}>
                            <button className={'bg-green-400 border border-black rounded-xl p-2 px-5'} type={"submit"}>
                                Login
                            </button>
                        </div>
                    </div>
                </form>
            :
                <form onSubmit={handleSignupSubmit}>
                    <div className={'bg-green-100 pl-10 py-10 rounded-lg border border-[0.5px] border-black'}>
                        <div className={'py-2 pr-10'}>
                            <p className={'pb-2'}>Name</p>
                            <input id={'name'} className={'w-full py-1 rounded-lg border border-[0.5px] border-black pl-2'}/>
                        </div>
                        <div className={'py-2 pr-10'}>
                            <p className={'pb-2'}>Username</p>
                            <input id={'username'} className={'w-full py-1 rounded-lg border border-[0.5px] border-black pl-2'}/>
                        </div>
                        <div className={'py-2 pr-10'}>
                            <p className={'pb-2'}>Password</p>
                            <input id={'password'} className={'w-full py-1 rounded-lg border border-[0.5px] border-black pl-2'}/>
                        </div>
                        {type === 'customer' &&
                            <div className={'py-2 pr-10'}>
                                <p className={'pb-2'}>Address</p>
                                <input id={'address'} className={'w-full py-1 rounded-lg border border-[0.5px] border-black pl-2'}/>
                            </div>
                        }
                        <div className={'flex justify-center items-center pt-2 pr-10'}>
                            <button className={'bg-green-400 border border-black rounded-xl p-2'} type={"submit"}>
                                Signup
                            </button>
                        </div>
                    </div>
                </form>
            }
            <div className={'py-10'}>
                <p className={'text-center'}>OR</p>
            </div>
            <div className={'pb-[250px] grid justify-items-center'}>
                <button className={'py-2 rounded-lg px-3 border border-[1.5px] border-black'} onClick={()=> handleTypeToggle()}>
                    {type==='customer' && <>I'm a vendor</>}
                    {type==='vendor' && <>I'm a customer</>}
                </button>
            </div>
        </div>
    )
}