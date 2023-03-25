import express from 'express'
import mysql from 'mysql2'
import { createRequire } from 'module'
const require = createRequire(import.meta.url)
const app = express();
const cors = require('cors')
app.use(cors())
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'hanoon2002',
    database: 'shoppr'
});

app.get('/products' , (req, res) => {
    const category = req.query.category;
    var q;
    if(category!== undefined) q = `SELECT * FROM shoppr.product WHERE Category_ID IN (${category})`;
    else q = `SELECT * FROM shoppr.product`;
    db.query(q, (err, result) => {
        if(err) throw err;
        res.send(result);
    }
    );
});

app.get('/categories', (req, res) => {
    const q = 'SELECT * FROM shoppr.product_category';
    db.query(q, (err, result) => {
            if(err) throw err;
            res.send(result);
        }
    );
});

app.get('/products/filter' , (req, res) => {
    const filter = req.query.filter;
    const category = req.query.category;
    var q;
    if(filter === '<1000') q = 'SELECT * FROM shoppr.product WHERE Price < 1000';
    else if(filter === '1000-5000') q = 'SELECT * FROM shoppr.product WHERE Price >= 1000 AND Price <= 5000';
    else if(filter === '5000-10000') q = 'SELECT * FROM shoppr.product WHERE Price >= 5000 AND Price <= 10000';
    else if(filter === '>10000') q = 'SELECT * FROM shoppr.product WHERE Price > 10000';

    db.query(q, (err, result) => {
        if(err) throw err;
        res.send(result);
        }
    );
});

app.get('/customer/login' , (req, res) => {
    const username = req.query.username;
    const password = req.query.password;
    const q = 'SELECT * FROM shoppr.customer WHERE Customer_Username = ? AND Customer_Password = ?';
    db.query(q, [username, password], (err, result) => {
            if(err) throw err;
            res.send(result);
        }
    );
});

app.post('/customer/signup' , (req, res) => {
    const id = 10000000;
    const name = "apple";
    const username = "apple";
    const password = "apple";
    const address = "apple";
    const payment = "apple";
    const q = 'INSERT INTO shoppr.customer (Customer_ID, Customer_Name, Customer_Username, Customer_Password, Customer_Address, Customer_Payment) VALUES (?, ?, ?, ?, ?, ?)';
    db.query(q, [id, name, username, password, address, payment], (err, result) => {
            if(err) throw err;
            res.send(result);
        }
    );
});

app.get('/vendor/login' , (req, res) => {
    const username = req.query.username;
    const password = req.query.password;
    const q = 'SELECT * FROM shoppr.vendor WHERE Vendor_Username = ? AND Vendor_Password = ?';
    db.query(q, [username, password], (err, result) => {
            if(err) throw err;
            res.send(result);
        }
    );
});

app.get('/vendor/info' , (req, res) => {
    const username = req.query.username;
    const q = 'SELECT * FROM shoppr.vendor WHERE Vendor_Username = ?';
    db.query(q, [username], (err, result) => {
            if(err) throw err;
            res.send(result);
        }
    );
});

app.get('/vendor/products' , (req, res) => {
    const vendor_id = req.query.id;
    const q = 'SELECT * FROM shoppr.product WHERE Vendor_ID = ?';
    db.query(q, [vendor_id], (err, result) => {
            if(err) throw err;
            res.send(result);
        }
    );
});

app.get('/cart/products' , (req, res) => {
    const customer_id = "0";
    //get products from cart
    const q = 'SELECT * FROM shoppr.product WHERE Product_ID IN (SELECT Product_ID FROM shoppr.cart WHERE Cart_ID = ?)';
    db.query(q, [customer_id], (err, result) => {
            if(err) throw err;
            res.send(result);
        }
    );
});

app.listen(8800, () => {
    console.log('Server is running on port 8800');
});