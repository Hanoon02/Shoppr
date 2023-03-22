import express from 'express'
import mysql from 'mysql2'
const app = express();

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'hanoon2002',
    database: 'shoppr'
});

app.get('/' , (req, res) => {
    const q = 'SELECT * FROM shoppr.customer';
    db.query(q, (err, result) => {
        if(err) throw err;
        res.send(result);
    });
});

app.listen(8800, () => {
    console.log('Server is running on port 8800');
});