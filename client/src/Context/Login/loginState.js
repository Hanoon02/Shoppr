import React from "react";
import loginContext from "./loginContext";

const LoginState = (props) => {
    const initialState = {
        "id": "",
        "name": "",
        "username": "",
        "password": "",
        "address": "",
        "type": "",
    }
    const [state, setState] = React.useState(initialState);
    const update = (id, name, username, password, address, type) => {
        setState({
            "id": id,
            "name": name,
            "username": username,
            "password": password,
            "address": address,
            "type": type,
        })
    }

    return(
        <loginContext.Provider value={{state, update}}>
            {props.children}
        </loginContext.Provider>
    )
}

export default LoginState;