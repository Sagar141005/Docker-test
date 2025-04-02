const express = require('express');

const app = express();

app.get('/', (req, res) => {
    res.send("Hello World!");
})

app.listen(3000, '0.0.0.0', () => {  // Bind to all interfaces, not just localhost
    console.log("Server is running on port 3000")
})