// THIS FILE HOLDS ALL THE CRUD ROUTES: REQUESTS TO DATABASE
const express = require("express");
const quotes = express.Router();
const {
  getAllQuotes,
  getQuote,
  createQuote,
  deleteQuote,
  updateQuote,
} = require("../queries/quotes");
const { checkAuthor, checkBoolean } = require("../validations/checkQuotes");

// INDEX w/QUERIES
quotes.get("/", async (req, res) => {
  const { order, is_favorite, category } = req.query;
  try {
    const allQuotes = await getAllQuotes(order, is_favorite, category);
    // console.log(allQuotes)
    if (allQuotes.length > 0) {
      res.status(200).json(allQuotes);
    } else {
      res.status(404).json({ error: "No quotes found" });
    }
  } catch (error) {
    res.status(500).json({ error: "Server error" });
  }
});

// SHOW
quotes.get("/:id", async (req, res) => {
  const { id } = req.params;
  const quote = await getQuote(id);
  if (quote.id) {
    res.json(quote);
  } else {
    res.redirect("/404"); // BROWSER ERROR
    // res.status(404).json("Song not found with the given ID");
  }
});

// CREATE
quotes.post("/", checkAuthor, checkBoolean, async (req, res) => {
  // quotes.post("/", async (req, res) => {
  try {
    const quote = await createQuote(req.body);
    res.json(quote);
  } catch (error) {
    res.status(400).json({ error: error });
  }
});

// DELETE
quotes.delete("/:id", async (req, res) => {
  const { id } = req.params;
  const deletedQuote = await deleteQuote(id);
  if (deletedQuote) {
    res.status(200).json(deletedQuote);
  } else {
    res.status(404).json("Song not found");
  }
});

// UPDATE
quotes.put("/:id", async (req, res) => {
  const { id } = req.params;
  const updatedQuote = await updateQuote(id, req.body);
  res.status(200).json(updatedQuote);
});

module.exports = quotes;
