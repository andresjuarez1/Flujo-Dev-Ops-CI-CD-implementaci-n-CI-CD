const express = require('express');
const app = express();
const port = 3000;

app.get('/api/v1/welcome', (req, res) => {
  res.send('Hola mundo a todos desde master branch! sapos todos');
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});
