import React from "react";
import NavBar from "../Components/NavBar";

export default function Cart() {
    return (
    <>
        <div>
            <NavBar />
        </div>
        <div className={"h-screen w-screen flex justify-center items-center"}>
            <p className={"text-2xl font-bold"}>Cart</p>
        </div>
    </>
  );
}