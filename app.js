const express = require('express');
const ejs = require('ejs');
var mysql = require('mysql');
var bodyParse = require('body-parser');
const app = express();

/************ middleware  */
app.use(bodyParse.json());
app.use(bodyParse.urlencoded({extended :true}));
app.use(express.static('veiws'));
/********************* db connection  */
var con =mysql.createConnection({
  host : "localhost" ,
  user : "root" ,
  password : "rootroot" ,
  database : "test"
});

con.connect((err)=>{
  if(err)
  {
      console.log('error');
  }
  else
  {
      console.log('connect to db');
  }
});

app.set('view engine', 'ejs');


app.get('/', (req, res) => {
  con.query('SELECT * FROM `users` ',
   (err , data)=>{
    res.render('index',{usersdata : data})
 
   });
  
    
    
  });

app.get('/getUser/:id', (req, res) => {
  con.query('SELECT * FROM `users` where id = ? ',[req.params.id],
   (err , data)=>{
    res.render('single',{userdata : data})

   });
});



app.listen(8080, () => console.log('Server Started on port 8080'));