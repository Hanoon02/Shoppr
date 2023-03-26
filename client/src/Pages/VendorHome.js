import React, {useEffect, useState, useContext} from "react";
import NavBar from "../Components/NavBar";
import loginContext from "../Context/loginContext";
import axios from "axios";
import * as URL from "../Config/urls";
import VendorProductCard from "../Components/VendorProductCard";

export default function VendorHome() {
    const [allProducts, setAllProducts] = useState([]);
    const [addProductModal, setAddProductModal] = useState(false);
    const [allCategoryIDs, setAllCategoryIDs] = useState([]);
    const [allCategoryNames, setAllCategoryNames] = useState([]);
    const [selectedCategory, setSelectedCategory] = useState('');


    const info = useContext(loginContext);
    useEffect(() => {
        fetchProducts();
        getCategory();
    }, []);

    const getCategory = async () => {
        try{
            const res = await axios.get(URL.GET_CATEGORIES)
            var categoryIDs = [];
            var categoryNames = [];
            res.data.forEach((category) => {
                categoryIDs.push(category.Category_ID);
                categoryNames.push(category.Category_Name);
            });
            setAllCategoryIDs(categoryIDs);
            setAllCategoryNames(categoryNames);
        }
        catch(err){
            console.error(err);
        }
    }

    const fetchProducts = async () => {
        try{
            const res = await axios.get(URL.GET_VENDOR_PRODUCTS, {
                params: {
                    id: info.state.id
                }
            });
            setAllProducts(res.data);
        }
        catch(err){
            console.error(err);
        }
    }

    const addProduct = async (e) => {
        e.preventDefault();
        const id = info.state.id;
        const name = e.target.name.value;
        const price = e.target.price.value;
        const category = e.target.category.value;
        try{
            const res = await axios.post(URL.ADD_VENDOR_PRODUCT, {
                params: {
                    vendor_id: id,
                    product_id: Math.floor(Math.random() * 1000000),
                    product_name: name,
                    product_price: price,
                    product_category: category,
                    warehouse: 3,
                }
            });
            console.log(res);
        }
        catch(err){
            console.error(err);
        }
    }

    return (
        <div>
            <div>
                <NavBar />
            </div>
            {addProductModal &&
                <div className={"fixed top-0 left-0 w-full h-full bg-black bg-opacity-50 z-50"}>
                    <div className={"fixed top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-[500px] h-[350px] bg-white rounded-lg z-50"}>
                        <div className={"flex justify-between items-center px-4 py-2"}>
                            <p className={"text-xl"}>Add Product</p>
                            <button onClick={() => setAddProductModal(false)} className={"text-2xl font-bold"}>X</button>
                        </div>
                        <hr className={"border border-black"}/>
                        <div className={"px-4 py-2"}>
                            <form onSubmit={addProduct}>
                                <p className={"text-xl "}>Product Name</p>
                                <input type={"text"} className={"w-full border border-black rounded-lg px-2 py-1"} id={"name"}/>
                                <p className={"text-xl"}>Product Price</p>
                                <input type={"text"} className={"w-full border border-black rounded-lg px-2 py-1"} id={"price"}/>
                                <p className={"text-xl"}>Product Category</p>
                                <select
                                    className="w-full p-1 border border-black rounded-md outline-none appearance-none mr-8"
                                    id={"category"}
                                >
                                    {allCategoryNames.map((category) => (
                                        <option value={allCategoryIDs[allCategoryNames.indexOf(category)]}>{category}</option>
                                    ))}
                                </select>
                                <button className={"bg-green-300 text-xl py-1 px-4 rounded-lg mt-4"} type={'submit'}>Add Product</button>
                            </form>
                        </div>
                    </div>
                </div>
            }
            <div>
                <div className={'flex item-center justify-between'}>
                    <p className={'text-2xl pl-5 pt-5'}>Welcome to your Vendor Dashboard - </p>
                    <div>
                        <button className={'bg-green-300 text-xl p-2 px-5 border border-black rounded-lg mt-5 mr-10'} onClick={()=>{setAddProductModal(true)}}>Add Product</button>
                    </div>
                </div>
                <div className={'grid grid-cols-2 pt-5'}>
                {allProducts.map((product) => (
                    <div className={'px-2 py-2'}><VendorProductCard product={product} /></div>
                ))}
                </div>
            </div>
        </div>
    )
}