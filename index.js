const express = require ('express');
const mongoose = require('mongoose');

const app = express();

const port = 3000

mongoose.connect('mongodb+srv://test1:1234@cluster0.e97aj.mongodb.net/').then(()=>{
    console.log('connected to mongoDB');
})
.catch((err)=>{
    console.log(err);
})


app.get('/',(req,res)=>{
    res.send('I love docker');
})

app.listen(port,'0.0.0.0',()=>{
    console.log(`server is running on port ${port}`);
})

