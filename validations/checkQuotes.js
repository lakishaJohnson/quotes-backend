const checkAuthor = (req, res, next) => {
    if (req.body.author) {
      next();
    } else {
      res.status(400).json({ error: "Author is required" });
    }
}

const checkBoolean = (req, res, next) => {
    const { is_favorite } = req.body;
    if (
      is_favorite == "true" ||
      is_favorite == "false" ||
      is_favorite == undefined
    ) {
      next();
    } else {
      res.status(400).json({ error: "is_favorite must be a boolean value" });
    }
};  


module.exports = { checkBoolean, checkAuthor };