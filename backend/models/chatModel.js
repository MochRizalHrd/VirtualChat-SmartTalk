const db = require("../db/connection");

const ChatModel = {
  saveMessage: (sender, message, callback) => {
    const query = "INSERT INTO tbl_chats (sender, message) VALUES (?, ?)";
    db.query(query, [sender, message], callback);
  },
  getAllMessages: (callback) => {
    const query = "SELECT * FROM tbl_chats ORDER BY timestamp ASC";
    db.query(query, callback);
  },
};

module.exports = ChatModel;
