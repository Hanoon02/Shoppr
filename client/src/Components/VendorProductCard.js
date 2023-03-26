import React, {useEffect, useState} from "react";
import axios from "axios";
import * as URL from "../Config/urls";

export default function VendorProductCard({product}) {
    const [productCategory, setProductCategory] = useState('');
    const [allCategoryIDs, setAllCategoryIDs] = useState([]);
    const [allCategoryNames, setAllCategoryNames] = useState([]);
    const [selectedCategory, setSelectedCategory] = useState('');
    const [options, setOptions] = useState(false);
    const [edit, setEdit] = useState(false);

    useEffect(() => {
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
            const categoryID = product.Category_ID;
            const category = res.data.filter((category) => category.Category_ID === categoryID);
            setProductCategory(category[0].Category_Name);
        }
        catch(err){
            console.error(err);
        }
    }

    return(
        <>
            <div className={'border border-black rounded-lg'}>
            {!options && !edit ?
                <div className={'flex flex-col items-center'} onClick={()=>setOptions(true)}>
                    <div className={'flex items-center'}>
                        <img className={'w-64 h-64 rounded-lg'} src={'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71hIfcIPyxS._SL1500_.jpg'} alt={product.Product_Name} />
                        <div className={'pl-4'}>
                            <p className={'text-lg'}>Product ID:- {product.Product_ID}</p>
                            <p className={'text-lg'}>Product Name:- {product.Product_Name}</p>
                            <p className={'text-lg'}>Product Price:- {product.Price} $</p>
                            <p className={'text-lg'}>Product Category:- {productCategory}</p>
                        </div>
                    </div>
                </div>
            : options && !edit ?
                <div>
                    <div className={'h-64 flex items-center justify-center'}>
                        <button className={'border border-black mx-5 p-4 px-8 rounded-xl bg-green-400'} onClick={()=>setEdit(true)}>Edit</button>
                        <button className={'border border-white mx-5 p-4 px-8 rounded-xl bg-black text-white'}>Remove</button>
                        <button className={'border border-black mx-5 p-4 px-8 rounded-xl bg-red-500 text-white'} onClick={()=>setOptions(false)}>Back</button>
                    </div>
                </div>
            : options && edit ?
                <div className={'h-64'}>
                    <div className={'pl-5 py-5'}>
                        <form>
                            <div className={'flex py-2'}>
                                <p className={'pr-2 pt-1'}> Name: </p>
                                <input type={'text'} className={'border border-black rounded w-full mr-8 py-1 pl-2'} placeholder={product.Product_Name}/>
                            </div>
                            <div className={'flex py-2'}>
                                <p className={'pr-2 pt-1'}> Price: </p>
                                <input type={'text'} className={'border border-black rounded w-full mr-8 py-1 pl-2'} placeholder={product.Price}/>
                            </div>
                            <div className={'flex py-2'}>
                                <p className={'pr-2 pt-1'}> Category: </p>
                                <select
                                    className="w-full p-1 border border-black rounded-md outline-none appearance-none mr-8"
                                    onChange={(e) => {setSelectedCategory(e.target.value);}}>
                                    {allCategoryNames.map((category) => {
                                        if(category === productCategory){
                                            return <option selected value={allCategoryIDs[allCategoryNames.indexOf(category)]}>{category}</option>
                                        }
                                        else{
                                            return <option value={allCategoryIDs[allCategoryNames.indexOf(category)]}>{category}</option>
                                        }
                                    })}
                                </select>
                            </div>
                        </form>
                    </div>
                    <div className={'flex'}>
                        <button className={'border border-black ml-5 p-3 px-8 rounded-xl bg-green-400'} onClick={()=>setEdit(false)}>Change</button>
                        <button className={'border border-black ml-3 p-3 px-8 rounded-xl bg-red-500'} onClick={()=>setEdit(false)}>Back</button>
                    </div>
                </div>
            : null}
            </div>
        </>
    )
}