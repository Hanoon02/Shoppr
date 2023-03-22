import React from "react";
import Portal from "../Components/loginPortal";

export default function LoginPage(){
    const mysql = require('mysql');

    const connection = mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: 'password',
        database: 'mydatabase'
    });

    connection.connect((err) => {
        if (err) {
            console.error('Error connecting to database:', err);
        } else {
            console.log('Database connection successful');
        }
    });

    function getUserInfo(username, password) {
        return new Promise((resolve, reject) => {
            connection.query('SELECT * FROM Customer WHERE Customer_Username = ? AND Customer_Password = ?', [username, password], (error, results) => {
                if (error) {
                    reject(error);
                } else if (results.length === 0) {
                    resolve(null);
                } else {
                    resolve(results[0]);
                }
            });
        });
    }

    return(
        <div className={'grid grid-cols-2'}>
            <div className={'col-span-1'}>
                <div className={' bg-stone-100 text-center h-full pt-[100px]'}>
                    <p className={'text-3xl py-10'}>Welcome</p>
                    <p className={'text-xl'}>Login to Continue</p>
                </div>
            </div>
            <div className={'col-span-1'}>
                <Portal />
            </div>
        </div>
    )
}