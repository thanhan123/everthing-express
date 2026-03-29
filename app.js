const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
    res.send('Hello from Express.js running in a Docker container!');
});

app.get('/health', (req, res) => {
    res.status(200).send('OK 123');
});

app.listen(PORT, () => {
    console.log(`Express app listening on port ${PORT}`);
});
