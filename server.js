const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.json({
        status: 200,
        message: 'Hello World from CICD-1 test-2'
    });
});

app.listen(8080, () => {
    console.log('Server is running on port 8080');
})