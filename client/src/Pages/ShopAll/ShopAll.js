import React, {useEffect, useState} from "react";
import axios from "axios";
import ProductCard from "../../Components/Card/ProductCard";
import NavBar from "../../Components/App/NavBar";
import Footer from "../../Components/App/Footer";


export default function ShopAll(){
    const [allProducts, setAllProducts] = useState([]);
    const [allCategoryIDs, setAllCategoryIDs] = useState([]);
    const [allCategoryNames, setAllCategoryNames] = useState([]);
    const [selectedCategory, setSelectedCategory] = useState('');
    const [selectedFilter, setSelectedFilter] = useState("all");

    useEffect(() => {
        fetchCategories().then(r => {
            fetchProducts('all', allCategoryIDs);
        });
    }, []);

    const fetchCategories = async () => {
        try {
            const res = await axios.get('http://localhost:8800/categories');
            var categoryIDs = [];
            var categoryNames = [];
            res.data.forEach((category) => {
                categoryIDs.push(category.Category_ID);
                categoryNames.push(category.Category_Name);
            });
            setAllCategoryIDs(categoryIDs);
            setAllCategoryNames(categoryNames);
            setSelectedCategory(categoryIDs);
        }
        catch(err){
            console.error(err);
        }
    }

    const fetchProducts = async (filter, categoryID) => {
        if(filter === 'all') {
            try {
                const res = await axios.get('http://localhost:8800/products', {
                    params: {
                        category: categoryID
                    }
                });
                setAllProducts(res.data);
            } catch (err) {
                console.error(err);
            }
        }
        else{
            try{
                const res = await axios.get('http://localhost:8800/products/filter', {
                    params: {
                        category: categoryID,
                        filter: filter
                    }
                });
                setAllProducts(res.data);
            }
            catch(err){
                console.error(err);
            }
        }
    }
    return(
        <>
            <div>
                <NavBar />
                <p className={'py-10 text-[50px] text-center font-bold'}> Shop All</p>
            </div>
            <div className={'flex'}>
                <div className={'flex w-1/5 flex-col pl-5'}>
                    <p className={'pl-5 text-2xl font-semibold text-[#BC4C2A] pt-4'}>Filter By</p>
                    <div className={'flex flex-col py-3'}>
                        <p className={'text-lg pl-[10px] pt-3'}>Category</p>
                        <div className="relative lg:max-w-sm pt-2 pl-3">
                            <select
                                className="w-full p-1 border rounded-md shadow-sm outline-none appearance-none"
                                onChange={(e) => {
                                    setSelectedCategory(e.target.value);
                                    fetchProducts(selectedFilter, e.target.value);
                                }}
                            >
                                <option value ={allCategoryIDs}>All Categories</option>
                                {allCategoryNames.map((category) => (
                                    <option value={allCategoryIDs[allCategoryNames.indexOf(category)]}>{category}</option>
                                ))}
                            </select>
                        </div>
                    </div>
                    <div className={'flex flex-col py-3 pl-3'}>
                        <p className={"text-lg px-2 pt-3"}>Price</p>
                        <div className="relative lg:max-w-sm pt-2">
                            <select
                                className="w-full p-1.5 bg-white border rounded-md shadow-sm outline-none appearance-none focus:border-black"
                                onChange={(e) => {
                                    setSelectedFilter(e.target.value);
                                    fetchProducts(e.target.value, selectedCategory);
                                }}
                            >
                                <option value ='all'>All Items</option>
                                <option value ='<1000'>Less than 1,000</option>
                                <option value ='1000-5000'>1,000 - 5,000</option>
                                <option value ='5000-10000'>5,000 - 10,000</option>
                                <option value = '>10000'>More than 10,000</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div className={'grid grid-cols-3 pt-2 w-4/5'}>
                    {allProducts.map((product) => (
                        <div className={'py-4'}><ProductCard product={product} /></div>
                    ))}
                </div>
            </div>
            <Footer />
        </>
    )
}