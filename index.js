import express from "express";
const app = express();

app.use(express.json());

import mysql from "mysql2";

// connecting Database
const connection = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "password",
  database: "node",
});

// post request

app.post("/products", async (req, res) => {
  try {
    const { name, address, country } = req.body;
    const [{ insertId }] = await connection.promise().query(
      `INSERT INTO users (name, address, country) 
          VALUES (?, ?,?)`,
      [name, address, country]
    );
    res.status(202).json({
      message: "product Created",
    });
  } catch (err) {
    res.status(500).json({
      message: err,
    });
  }
});

app.get("/products", async (req, res) => {
  try {
    const data = await connection.promise().query(`SELECT *  from products;`);
    res.status(200).json({
      users: data[0],
    });
  } catch (err) {
    res.status(500).json({
      message: err,
    });	
  }
});
//filter
app.get("/products/kategori/:categori_id", async (req, res) => {
  try {
    const { categori_id } = req.params;
    const data = await connection
      .promise()
      .query(`SELECT *  from products where categori_id = ?`, [categori_id]);
    res.status(200).json({
      user: data[0][0],
    });
  } catch (err) {
    res.status(500).json({
      message: err,
    });
  }
});

//cari modus emo
app.get("/average", async (req, res) => {
  try {
    const data = await connection.promise().query(`select name,emotion,avg(score),created from average group by id,name;`);
    res.status(200).json({
      users: data[0],
    });
  } catch (err) {
    res.status(500).json({
      message: err,
    });	
  }
});


//cari modus score
app.get("/average2", async (req, res) => {
  try {
    const data = await connection.promise().query(`select name,avg(score),emotion,created from average group by id,name,created;`);
    res.status(200).json({
      users: data[0],
    });
  } catch (err) {
    res.status(500).json({
      message: err,
    });	
  }
});
app.get("/products/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const data = await connection
      .promise()
      .query(`SELECT *  from products where id = ?`, [id]);
    res.status(200).json({
      user: data[0][0],
    });
  } catch (err) {
    res.status(500).json({
      message: err,
    });
  }
});

app.patch("/products/:id", async (req, res) => {
  try {
    const { id } = req.params;
    const { title, slug, lang,status} = req.body;
    const update = await connection
      .promise()
      .query(
        `UPDATE products set title = ?, slug = ?, lang = ?,status = ? where id = ?`,
        [ title, slug, lang,status,id]
      );
    res.status(200).json({
      message: "updated",
    });
  } catch (err) {
    res.status(500).json({
      message: err,
    });
  }
});

app.delete("/products/:id", async (req, res) => {
    try {
      const { id } = req.params;
      const update = await connection
        .promise()
        .query(
          `DELETE FROM  products where id = ?`,
          [id]
        );
      res.status(200).json({
        message: "deleted",
      });
    } catch (err) {
      res.status(500).json({
        message: err,
      });
    }
  });

app.listen(5000, () => {
  console.log("Server listening in http://localhost:5000");
});
