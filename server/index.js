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

app.put('/products/update', (req, res) => {
    const productID = req.body.params.productID;
    const productName = req.body.params.productName;
    const productPrice = req.body.params.productPrice;
    const categoryID = req.body.params.categoryID;
    const vendorID = req.body.params.vendorID;
    const warehouseID = 4;
    console.error(productID, productName, productPrice, categoryID, vendorID, warehouseID);
    const q = `UPDATE shoppr.product SET Product_Name = ?, Price = ?, Category_ID = ?, Vendor_ID = ?, Warehouse_ID = ? WHERE Product_ID = ?`;
    db.query(q, [productName, productPrice, categoryID, vendorID, warehouseID, productID], (err, result) => {
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
    const id = req.body.params.id;
    const name = req.body.params.name;
    const username = req.body.params.username;
    const password = req.body.params.password;
    const address = req.body.params.address;
    const payment = req.body.params.payment;
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

app.post('/vendor/add' , (req, res) => {
    const vendor_id = req.body.params.vendor_id;
    const product_id = req.body.params.product_id;
    const product_name = req.body.params.product_name;
    const product_price = req.body.params.product_price;
    const product_category = req.body.params.product_category;
    const product_warehouse = 3;
    const q = 'INSERT INTO shoppr.product (Product_ID, Product_Name, Price, Warehouse_ID, Vendor_ID, Category_ID) VALUES (?, ?, ?, ?, ?, ?)';
    db.query(q, [product_id, product_name, product_price, product_warehouse, vendor_id, product_category], (err, result) => {
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

app.get('/test/create_get_user', (req, res) => {
    const id = Math.floor(Math.random() * 1000000);
    const name = req.query.name;
    const username = req.query.name;
    const password = req.query.name;
    const address = req.query.name;
    const payment = req.query.name;

    db.beginTransaction((err) => {
        if (err) throw err;
        const insertQuery = "INSERT INTO shoppr.customer (Customer_ID, Customer_Name, Customer_Username, Customer_Password, Customer_Address, Customer_Payment) " +
            "VALUES (?, ?, ?, ?, ?, ?)";
        db.query(insertQuery, [id, name, username, password, address, payment], (err, insertResult) => {
            if (err) {
                return db.rollback(() => {
                    throw err;
                });
            }
            const selectQuery = "SELECT * FROM shoppr.customer WHERE Customer_ID = ?";
            db.query(selectQuery, [id], (err, selectResult) => {
                if (err) {
                    return db.rollback(() => {
                        throw err;
                    });
                }
                db.commit((err) => {
                    if (err) {
                        return db.rollback(() => {
                            throw err;
                        });
                    }
                    res.send(selectResult);
                });
            });
        });
    });
});

app.get('/test/create_get_vendor', (req, res) => {
    const id = Math.floor(Math.random() * 1000000);
    const name = req.query.name;
    const username = req.query.name;
    const password = req.query.name;

    db.beginTransaction((err) => {
        if (err) throw err;
        const insertQuery = "INSERT INTO shoppr.vendor (Vendor_ID, Vendor_Name, Vendor_Username, Vendor_Password) " +
            "VALUES (?, ?, ?, ?)";
        db.query(insertQuery, [id, name, username, password], (err, insertResult) => {
            if (err) {
                return db.rollback(() => {
                    throw err;
                });
            }
            const selectQuery = "SELECT * FROM shoppr.vendor WHERE Vendor_ID = ?";
            db.query(selectQuery, [id], (err, selectResult) => {
                if (err) {
                    return db.rollback(() => {
                        throw err;
                    });
                }
                db.commit((err) => {
                    if (err) {
                        return db.rollback(() => {
                            throw err;
                        });
                    }
                    res.send(selectResult);
                });
            });
        });
    });
});

app.get('/test/create_get_product', (req, res) => {
    const ProductID = Math.floor(Math.random() * 1000000);
    const VendorID = Math.floor(Math.random() * 1000000);
    const WarehouseID = Math.floor(Math.random() * 1000000);
    const CategoryID = Math.floor(Math.random() * 1000000);
    const price = Math.floor(Math.random() * 1000000);
    const CategoryName = req.query.name;
    const VendorName = req.query.name;
    const VendorUsername = req.query.name;
    const VendorPassword = req.query.name;
    const WarehouseLocation = req.query.name;
    const ProductName = req.query.name;

    db.beginTransaction((err) => {
        if (err) throw err;
        const insertWarehouseQuery = "INSERT INTO shoppr.warehouse (Warehouse_ID, Location) " +
            "VALUES (?, ?)";
        db.query(insertWarehouseQuery, [WarehouseID, WarehouseLocation], (err, insertWarehouseResult) => {
            if (err) {
                return db.rollback(() => {
                    throw err;
                });
            }
            const insertCategoryQuery = "INSERT INTO shoppr.product_category (Category_ID, Category_Name) " +
            "VALUES (?, ?)";
            db.query(insertCategoryQuery, [CategoryID, CategoryName], (err, insertCategoryResult) => {
                if (err) {
                    return db.rollback(() => {
                        throw err;
                    });
                }
                const insertVendorQuery = "INSERT INTO shoppr.vendor (Vendor_ID, Vendor_Name, Vendor_Username, Vendor_Password) " +
                "VALUES (?, ?, ?, ?)";
                db.query(insertVendorQuery, [VendorID, VendorName, VendorUsername, VendorPassword], (err, insertVendorResult) => {
                    if (err) {
                        return db.rollback(() => {
                            throw err;
                        });
                    }
                    const insertProductQuery = "INSERT INTO shoppr.product (Product_ID, Product_Name, Price, Warehouse_ID, Vendor_ID, Category_ID) " +
                    "VALUES (?, ?, ?, ?, ?, ?)";
                    db.query(insertProductQuery, [ProductID, ProductName, price, WarehouseID, VendorID, CategoryID], (err, insertProductResult) => {
                        if (err) {
                            return db.rollback(() => {
                                throw err;
                            });
                        }
                        const selectQuery = "SELECT * FROM shoppr.product WHERE Product_ID = ?";
                        db.query(selectQuery, [ProductID], (err, selectResult) => {
                            if (err) {
                                return db.rollback(() => {
                                    throw err;
                                }
                            );
                        }
                        db.commit((err) => {
                            if (err) {
                                return db.rollback(() => {
                                    throw err;
                                });
                            }
                            res.send(selectResult);
                        });
                    });
                });
            });
        });
    });
});
});


app.listen(8800, () => {
    console.log('Server is running on port 8800');
});