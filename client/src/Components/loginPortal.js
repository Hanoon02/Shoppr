import React, {useState} from "react";
import axios from "axios";

export default function Portal(){
    const [loggedIn, setLoggedIn] = useState(false);

    const login = async (e) => {
        e.preventDefault();
        const username = e.target.username.value;
        const password = e.target.password.value;
        try {
            const res = await axios.get('http://localhost:8800/login', {
                params: {
                    username: username,
                    password: password
                }
            });
            console.log(res.data);
            if (res.data.length > 0) {
                window.location.href = '/home';
            }
            else setLoggedIn(true);
        } catch (err) {
            console.error(err);
        }
    }

    return(
        <div className={'mx-[100px] mt-10'}>
            <form onSubmit={login}>
                <div className={'pt-[100px] pb-[10px]'}>
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
                <button className={'bg-blue-100 py-2 rounded-lg px-3 border border-[0.5px] border-black'}>I'm a vendor</button>
            </div>
        </div>
    )
}