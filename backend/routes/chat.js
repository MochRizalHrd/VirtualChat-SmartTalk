const express = require("express");
const router = express.Router();
const ChatController = require("../controllers/chatController");

router.get("/messages", ChatController.getMessages);
router.post("/messages", ChatController.saveMessage);

module.exports = router;
