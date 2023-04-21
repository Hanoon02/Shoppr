import React, {useState, useContext} from "react";
import axios from "axios";
import loginContext from "../../Context/Login/loginContext";
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
                    info.update(res.data[0].Customer_ID, res.data[0].Customer_Name, res.data[0].Customer_Username, res.data[0].Customer_Password, res.data[0].Customer_Address, "customer");
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
                    info.update(res.data[0].Vendor_ID, res.data[0].Vendor_Name, res.data[0].Vendor_Username, res.data[0].Vendor_Password, "", "vendor");
                    navigation('/vendor');
                } else setLoggedIn(true);
            } catch (err) {
                console.error(err);
            }
        }
    }

    return(
        <div className={'mx-[100px] w-[700px] my-10 border py-[60px] pl-10 pr-5 shadow-md'}>
            <div className={''}>
                <div className={'flex'}>
                    {!signup ?
                        type === 'customer' ? <p className={'text-[30px] font-bold'}>Customer Login</p> : <p className={'text-[30px] font-bold'}>Vendor Login</p>
                        :
                        type === 'customer' ? <p className={'text-[30px] font-bold'}>Customer Signup</p> : <p className={'text-[30px] font-bold'}>Vendor Signup</p>
                    }
                    <button className={'border border-1 border-[#BC4C2A] rounded-3xl px-3 ml-5'} onClick={handlePortalToggle}>{signup ? 'Login' : 'Signup'}</button>
                </div>
                {loggedIn && <p className={'text-red-500 text-center'}>Invalid Username or Password</p>}
            </div>
            {!signup ?
                <form onSubmit={handleLoginSubmit}>
                    <div className={'pt-5'}>
                        <div className={'py-2 pr-10'}>
                            <p className={'pb-2 text-[26px]'}>Username</p>
                            <input id={'username'} className={'w-full py-2 border border-[0.5px] border-[#BC4C2A] pl-2'} required={true}/>
                        </div>
                        <div className={'py-2 pr-10'}>
                            <p className={'pb-2 text-[26px]'}>Password</p>
                            <input id={'password'} type={'password'} className={'w-full py-2 border border-[0.5px] border-[#BC4C2A] pl-2'} required={true}/>
                        </div>
                        <div className={'flex justify-center items-center pt-2 pr-10'}>
                            <button type={"submit"} className={'text-white w-full h-[50px] bg-[#BC4C2A] my-1 px-4 text-xl'}>
                                Login
                            </button>

                        </div>
                    </div>
                </form>
            :
                <form onSubmit={handleSignupSubmit}>
                    <div className={'pt-5'}>
                        <div className={'py-2 pr-10'}>
                            <p className={'pb-2 text-[26px]'}>Name</p>
                            <input id={'name'} className={'w-full py-2 border border-[0.5px] border-[#BC4C2A] pl-2'} required={true}/>
                        </div>
                        <div className={'py-2 pr-10'}>
                            <p className={'pb-2 text-[26px]'}>Username</p>
                            <input id={'username'} className={'w-full py-2 border border-[0.5px] border-[#BC4C2A] pl-2'} required={true}/>
                        </div>
                        <div className={'py-2 pr-10'}>
                            <p className={'pb-2 text-[26px]'}>Password</p>
                            <input id={'password'} className={'w-full py-2 border border-[0.5px] border-[#BC4C2A] pl-2'} required={true}/>
                        </div>
                        {type === 'customer' &&
                            <div className={'py-2 pr-10'}>
                                <p className={'pb-2 text-[26px]'}>Address</p>
                                <input id={'address'} className={'w-full py-2 border border-[0.5px] border-[#BC4C2A] pl-2'} required={true}/>
                            </div>
                        }
                        <div className={'flex justify-center items-center pt-2 pr-10'}>
                            <button type={"submit"} className={'text-white w-full h-[50px] bg-[#BC4C2A] my-1 px-4 text-xl'}>
                                Signup
                            </button>
                        </div>
                    </div>
                </form>
            }
            <div className={'pr-10 grid justify-items-center'}>
                <button className={'text-white w-full h-[50px] bg-black my-1 px-4 text-xl'} onClick={()=> handleTypeToggle()}>
                    {type==='customer' && <>I'm a vendor</>}
                    {type==='vendor' && <>I'm a customer</>}
                </button>
            </div>
        </div>
    )
}