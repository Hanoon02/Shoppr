import React, {useEffect, useState, useContext} from "react";
import NavBar from "../../Components/App/NavBar";
import loginContext from "../../Context/Login/loginContext";
import axios from "axios";
import * as URL from "../../Config/urls";
import VendorProductCard from "../../Components/Card/VendorProductCard";
import {ReactComponent as AddSVG} from "../../Assets/add.svg";


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
                    <div className={"fixed top-1/2 left-1/2 transform -translate-x-1/2 -translate-y-1/2 w-[500px] h-[400px] bg-white z-50"}>
                        <div className={"text-center px-4 py-2"}>
                            <p className={"text-[26px]"}>Add Product</p>
                        </div>
                        <hr className={"border border-black"}/>
                        <div className={"px-4 py-2"}>
                            <form onSubmit={addProduct}>
                                <p className={"text-xl "}>Product Name</p>
                                <input type={"text"} className={"w-full border border-black px-2 py-1"} id={"name"} required={true} />
                                <p className={"text-xl"}>Product Price</p>
                                <input type={"text"} className={"w-full border border-black px-2 py-1"} id={"price"} required={true} />
                                <p className={"text-xl"}>Product Category</p>
                                <select
                                    className="w-full p-2 border border-black outline-none appearance-none mr-8"
                                    id={"category"}
                                >
                                    {allCategoryNames.map((category) => (
                                        <option value={allCategoryIDs[allCategoryNames.indexOf(category)]}>{category}</option>
                                    ))}
                                </select>
                                <button className={'text-white w-full h-[50px] bg-[#BC4C2A] my-1 mt-3 px-4 text-xl'} type={'submit'}>Add Product</button>
                                <button className={'text-white w-full h-[50px] bg-black my-1 px-4 text-xl'} onClick={() => setAddProductModal(false)}>Close</button>
                            </form>
                        </div>
                    </div>
                </div>
            }
            <div>
                <div className={'flex item-center justify-between'}>
                    <div className={'flex'}>
                        <p className={'text-[30px] px-3'}>Your Products</p>
                        <div className={'py-2 border-black rounded-full border px-2 border-1 cursor-pointer'} onClick={()=>{setAddProductModal(true)}}><AddSVG/></div>
                    </div>
                </div>
                <div className={'pt-5'}>
                {allProducts.map((product) => (
                    <div className={'px-2 py-2'}>
                        <VendorProductCard product={product} />
                        <hr className={'border border-1 border-gray-300 mt-10 mx-10'}/>
                    </div>
                ))}
                </div>
            </div>
        </div>
    )
}