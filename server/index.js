import express from 'express'
import mysql from 'mysql2'
import bodyParser from "body-parser";
import { createRequire } from 'module'
const require = createRequire(import.meta.url)
const app = express();
var jsonParser = bodyParser.json()
var urlencodedParser = bodyParser.urlencoded({ extended: false })
app.use(express.json());
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
    if(filter === '<1000') q = 'SELECT * FROM shoppr.product WHERE Price < 1000 AND Category_ID IN (' + category + ')';
    else if(filter === '1000-5000') q = 'SELECT * FROM shoppr.product WHERE Price >= 1000 AND Price <= 5000 AND Category_ID IN (' + category + ')';
    else if(filter === '5000-10000') q = 'SELECT * FROM shoppr.product WHERE Price >= 5000 AND Price <= 10000 AND Category_ID IN (' + category + ')';
    else if(filter === '>10000') q = 'SELECT * FROM shoppr.product WHERE Price > 10000 AND Category_ID IN (' + category + ')';

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
    const customer_id = req.query.id;
    //return product and its quantity
    const q = 'SELECT Product.Product_ID, Product.Product_Name, Product.Price, Cart.Quantity FROM shoppr.product INNER JOIN shoppr.cart ON Product.Product_ID = Cart.Product_ID WHERE Cart.Cart_ID = ?';
    db.query(q, [customer_id], (err, result) => {
            if(err) throw err;
            res.send(result);
        }
    );
});

app.post('/cart/add', express.json(), (req, res) => {
    const productID = req.body.params.productID;
    const cartID = req.body.params.userID;
    const quantity = req.body.params.quantity;
    const q = 'INSERT INTO shoppr.cart (Cart_ID, Product_ID, Quantity) VALUES (?, ?, ?)';
    db.query(q, [cartID, productID, quantity], (err, result) => {
            if (err) throw err;
            res.send(result);
        }
    );
});

app.delete('/cart/remove', express.json(), (req, res) => {
    const productID = req.query.productID;
    const cartID = req.query.userID;
    const q = 'DELETE FROM shoppr.cart WHERE Cart_ID = ? AND Product_ID = ?';
    db.query(q, [cartID, productID], (err, result) => {
            if (err) throw err;
            res.send(result);
        }
    );
});

app.get('/orders' , (req, res) => {
    const customer_id = req.query.user;
    const q = 'SELECT * FROM shoppr.orders WHERE CART_ID = ?';
    db.query(q, [customer_id], (err, result) => {
            if(err) throw err;
            res.send(result);
        }
    );
});

app.listen(8800, () => {
    console.log('Server is running on port 8800');
});