import React from "react";

export default function HighlightCategory({category}){
    return(
        <div>
            <div className={'flex flex-col justify-center items-center'}>
                <p className={'absolute text-white text-3xl font-bold'}>{category.name}</p>
                <img className={'h-[500px]'} src={'https://www.91-cdn.com/hub/wp-content/uploads/2022/07/Top-laptop-brands-in-India.jpg'} alt={category.name} />
            </div>
        </div>
    )
}