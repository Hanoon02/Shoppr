import React from "react";
import loginContext from "./loginContext";

const LoginState = (props) => {
    const initialState = {
        "name": "",
        "username": "",
        "password": "",
        "address": "",
    }
    const [state, setState] = React.useState(initialState);
    const update = (name, username, password, address) => {
        setState({
            "name": name,
            "username": username,
            "password": password,
            "address": address
        })
    }

    return(
        <loginContext.Provider value={{state, update}}>
            {props.children}
        </loginContext.Provider>
    )
}

export default LoginState;