import React, {useState} from "react";
import {TEST_CREATE_GET_PRODUCT, TEST_CREATE_GET_USER, TEST_CREATE_GET_VENDOR} from "../../Config/urls";
import axios from "axios";

export default function Test(){
    const [create_get_user, setCreate_get_user] = useState();
    const [create_get_vendor, setCreate_get_vendor] = useState();
    const [create_get_product, setCreate_get_product] = useState();

    const handle_create_get_user = async (e) => {
        e.preventDefault();
        const value = e.target.name.value;
        try {
            const res = await axios.get(TEST_CREATE_GET_USER, {
                params: {
                    name: value,
                }
            });
            setCreate_get_user(res.data[0]);
            console.log(res.data[0]);
        }
        catch(err){
            console.log(err);
        }
    }

    const handle_create_get_vendor = async (e) => {
        e.preventDefault();
        const value = e.target.name.value;
        try {
                const res = await axios.get(TEST_CREATE_GET_VENDOR, {
                    params: {
                        name: value,
                    }
                });
                setCreate_get_vendor(res.data[0]);
                console.log(res.data[0]);
            }
        catch(err){
            console.log(err);
        }
    }

    const handle_create_get_product = async (e) => {
        e.preventDefault();
        const value = e.target.name.value;
        try {
            const res = await axios.get(TEST_CREATE_GET_PRODUCT, {
                params: {
                    name: value,
                }
            });
            setCreate_get_product(res.data[0]);
            console.log(res.data[0]);
        }
        catch(err){
            console.log(err);
        }
    }



    return(
        <>
            <p className={'pt-6 text-[26px]'}>Transactions</p>
            <div className={'flex py-2'}>
                <div className={'w-2/5 pr-3'}>
                    <p className={'font-semibold text-[20px] pb-[10px]'}>1. Create a user, and return the details</p>
                    <form onSubmit={handle_create_get_user}>
                        <input type={'text'} placeholder={'Give name'} id={'name'} className={'w-full py-2 border border-[0.5px] border-[#BC4C2A] pl-2'} required={true}/>
                        <button className={'w-full h-[40px] bg-[#BC4C2A] my-2 px-4 text-xl'}  type={'submit'}> Run Transaction</button>
                    </form>
                </div>
                <div className={'w-3/5 '}>
                    <p className={'text-[20px] font-semibold'}>Results</p>
                    <p>ID: {create_get_user?.Customer_ID}</p>
                    <p>Name: {create_get_user?.Customer_Name}</p>
                    <p>Username: {create_get_user?.Customer_Username}</p>
                    <p>Address: {create_get_user?.Customer_Address}</p>
                </div>
            </div>
            <div className={'flex py-2'}>
                <div className={'w-2/5 pr-3'}>
                    <p className={'font-semibold text-[20px] pb-[10px]'}>2. Create a vendor, and return the details</p>
                    <form onSubmit={handle_create_get_vendor}>
                        <input type={'text'} placeholder={'Give name'} id={'name'} className={'w-full py-2 border border-[0.5px] border-[#BC4C2A] pl-2'} required={true}/>
                        <button className={'w-full h-[40px] bg-[#BC4C2A] my-2 px-4 text-xl'}  type={'submit'}> Run Transaction</button>
                    </form>
                </div>
                <div className={'w-3/5 '}>
                    <p className={'text-[20px] font-semibold'}>Results</p>
                    <p>ID: {create_get_vendor?.Vendor_ID}</p>
                    <p>Name: {create_get_vendor?.Vendor_Name}</p>
                    <p>Username: {create_get_vendor?.Vendor_Username}</p>
                </div>
            </div>
            <div className={'flex py-2'}>
                <div className={'w-2/5 pr-3'}>
                    <p className={'font-semibold text-[20px] pb-[10px]'}>3. Create a product, and return the details</p>
                    <form onSubmit={handle_create_get_product}>
                        <input type={'text'} placeholder={'Give name'} id={'name'} className={'w-full py-2 border border-[0.5px] border-[#BC4C2A] pl-2'} required={true}/>
                        <button className={'w-full h-[40px] bg-[#BC4C2A] my-2 px-4 text-xl'}  type={'submit'}> Run Transaction</button>
                    </form>
                </div>
                <div className={'w-3/5 '}>
                    <p className={'text-[20px] font-semibold'}>Results</p>
                    <p>ID: {create_get_product?.Product_ID}</p>
                    <p>Name: {create_get_product?.Product_Name}</p>
                    <p>Price: {create_get_product?.Price}</p>
                    <p>Warehouse: {create_get_product?.Warehouse_ID}</p>
                    <p>Vendor: {create_get_product?.Vendor_ID}</p>
                    <p>Category: {create_get_product?.Category_ID}</p>
                </div>
            </div>
        </>
    )
}