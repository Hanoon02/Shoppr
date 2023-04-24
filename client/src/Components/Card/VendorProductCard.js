import React, {useEffect, useState} from "react";
import axios from "axios";
import * as URL from "../../Config/urls";

export default function VendorProductCard({product}) {
    const [productCategory, setProductCategory] = useState('');
    const [allCategoryIDs, setAllCategoryIDs] = useState([]);
    const [allCategoryNames, setAllCategoryNames] = useState([]);
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
    const handleUpdate = async (e) => {
        e.preventDefault();
        const productID = product.Product_ID;
        const newName = e.target.name.value;
        const newPrice = e.target.price.value;
        const newCategory = e.target.category.value;
        const vendorID = product.Vendor_ID;
        try{
            const res = await axios.put(URL.UPDATE_VENDOR_PRODUCT, {
                params: {
                    productID: productID,
                    productName: newName,
                    productPrice: newPrice,
                    categoryID: newCategory,
                    vendorID: vendorID
                }
            });
            setEdit(false);
        }
        catch(err){
            console.error(err);
        }
    }

    return(
        <>
            <div className={''}>

                <div className={'flex items-center justify-evenly'} onClick={()=>setOptions(true)}>
                    <div className={'w-[400px] h-[500px] bg-[#F6F3EF] grid content-center justify-center'}>
                        <img className={'w-[400px] h-[250px]'} src={'https://www.pngmart.com/files/15/JBL-Audio-Speakers-PNG-Background-Image.png'} alt={product.Product_Name} />
                    </div>
                    <div className={'flex items-start flex-col'}>
                        {!edit ?<div>
                            <p className={'text-[80px]'}>{product.Product_Name}</p>
                            <p className={'text-[30px] italic'}>{productCategory}</p>
                            <p className={'text-[20px] text-gray-500'}>{product.Product_ID}</p>
                            <p className={'text-[50px] italic text-[#BC4C2A]'}>${product.Price}</p>
                        </div>:
                        <div className={''}>
                            <form onSubmit={handleUpdate}>
                                <div className={'py-5'}>
                                    <div className={'py-2'}>
                                        <p className={'text-[20px]'}> Name </p>
                                        <input type={'text'} className={'border border-black w-full mr-8 py-1 pl-2'} placeholder={product.Product_Name} id={'name'} required={true} />
                                    </div>
                                    <div className={'py-2'}>
                                        <p className={'text-[20px]'}> Price </p>
                                        <input type={'text'} className={'border border-black  w-full mr-8 py-1 pl-2'} placeholder={product.Price} id={'price'} required={true} />
                                    </div>
                                    <div className={'py-2'}>
                                        <p className={'text-[20px] pb-1'}> Category </p>
                                        <select
                                            className="w-full p-2 border border-black  outline-none appearance-none mr-8"
                                            id={'category'}
                                            required={true}
                                        >
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
                                </div>
                                <button className={'border border-black border-1 text-black w-[300px] h-[50px] bg-[#F6F3EF] mb-1 px-4 text-xl'} type={'submit'}>Change</button>
                            </form>
                        </div>
                        }
                        <button className={'text-white w-[300px] h-[50px] bg-[#BC4C2A] my-1 px-4 text-xl'} onClick={()=>setEdit(!edit)}>
                            {edit ? 'Cancel' : 'Edit'}
                        </button>
                        <button className={'text-white w-[300px] h-[50px] bg-black my-1 px-4 text-xl'}>Remove</button>
                    </div>
                </div>
            </div>
        </>
    )
}