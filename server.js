// DEPENDENCIES
const app = require("./app.js");

//CONFIGURE
require("dotenv").config();
const PORT = process.env.PORT;

//LISTEN 
app.listen(PORT, () => {
    console.log(`listening to port ${PORT}`);
});