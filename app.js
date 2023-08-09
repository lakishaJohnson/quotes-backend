//DEPENDENCIES
const cors = require("cors");
const express = require("express");

//CONFIGURE
const app = express();

//MIDDLEWARE
app.use(cors());
app.use(express.json());

//ROUTES
app.get("/", (req,res) => {
    res.send("Welcome")
})
// app.get("/", async (req, res) => {
//     try {
//       const randomQuote = await getRandomQuote();
//       if (randomQuote) {
//         res.status(200).json(randomQuote);
//       } else {
//         res.status(404).json({ error: "No quotes found" });
//       }
//     } catch (error) {
//       res.status(500).json({ error: "Server error" });
//     }
//   });

//QUOTES ROUTE
const quotesController = require("./controllers/quotesController.js");
app.use("/quotes", quotesController);

//404 PAGE
app.get("*", (req, res) => {
    res.status(404).send("ooops, Page not found")
})

//EXPORT
module.exports = app;