// THIS FILE HOLDS RESPONSE FROM ALL REQUESTS MADE TO DATABASE
const db = require("../db/dbConfig.js");

// INDEX: ALL QUOTES w/QUERIES
const getAllQuotes = async (order, is_favorite, category) => {
  // Start constructing the SQL query
  let query = "SELECT * FROM quotes";
  let whereConditions = [];

  // Handle is_favorite condition
  if (is_favorite === "true") {
    whereConditions.push("is_favorite = true");
  } else if (is_favorite === "false") {
    whereConditions.push("is_favorite = false");
  }

  // Handle category condition
  const validCategories = [
    "LOVE",
    "INSPIRATIONAL",
    "DEATH",
    "FUNNY",
    "LIFE",
    "HOPE",
    "STRENGTH",
    "FRIENDSHIP",
    "TRUST",
    "DETERMINATION",
    "RELIGION",
    "MOTIVATION",
    "WISDOM",
    "PROVERB",
  ];
  if (validCategories.includes(category)) {
    whereConditions.push(`category = '${category}'`);
  }

  // Append WHERE conditions if any exist
  if (whereConditions.length > 0) {
    query += " WHERE " + whereConditions.join(" AND ");
  }

  // Handle order condition
  if (order === "asc") {
    query += " ORDER BY author ASC";
  } else if (order === "desc") {
    query += " ORDER BY author DESC";
  }

  try {
    console.log("SQL query:", query);
    const allQuotes = await db.any(query);
    return allQuotes;
  } catch (error) {
    console.error("Error executing the query:", error);
    return [];
  }
};

// SHOW: ONE QUOTE
const getQuote = async (id) => {
  try {
    const oneQuote = await db.one("SELECT * FROM quotes WHERE id=$1", id);
    return oneQuote;
  } catch (error) {
    return error; // DATABASE ERROR
  }
};

// CREATE: A QUOTE
const createQuote = async (quote) => {
  try {
    const newQuote = await db.one(
      "INSERT INTO quotes (category, quote, author, source, language, year_quoted, is_favorite) VALUES($1, $2, $3, $4, $5, $6, $7) RETURNING *",
      [
        quote.category,
        quote.quote,
        quote.author,
        quote.source,
        quote.language,
        quote.year_quoted,
        quote.is_favorite,
      ]
    );
    return newQuote;
  } catch (error) {
    return error;
  }
};

// DELETE: A QUOTE
const deleteQuote = async (id) => {
  try {
    const deletedQuote = await db.one(
      "DELETE FROM quotes WHERE id = $1 RETURNING *",
      id
    );
    return deletedQuote;
  } catch (error) {
    return error;
  }
};

// UPDATE: A QUOTE
const updateQuote = async (id, quote) => {
  try {
    const updatedQuote = await db.one(
      "UPDATE quotes SET category=$1, quote=$2, author=$3, source=$4, language=$5, year_quoted=$6, is_favorite=$7 where id=$8 RETURNING *",
      [
        quote.category,
        quote.quote,
        quote.author,
        quote.source,
        quote.language,
        quote.year_quoted,
        quote.is_favorite,
        id,
      ]
    );
    return updatedQuote;
  } catch (error) {
    return error;
  }
};

// RANDOM QUOTE
const getRandomQuote = async () => {
  try {
    const countQuery = "SELECT COUNT(*) FROM quotes";
    const { count } = await db.one(countQuery);

    const randomIndex = Math.floor(Math.random() * count);
    const randomQuote = await db.one(
      "SELECT * FROM quotes OFFSET $1 LIMIT 1",
      randomIndex
    );
    return randomQuote;
  } catch (error) {
    return error;
  }
};

module.exports = {
  getAllQuotes,
  getQuote,
  createQuote,
  deleteQuote,
  updateQuote,
  getRandomQuote,
};
