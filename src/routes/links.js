//links.js 
const express = require('express');
const router = express.Router();
const pool = require('../database');


router.get('/add', (req, res) => {
    res.render('links/add.hbs');
    
});



module.exports = router;