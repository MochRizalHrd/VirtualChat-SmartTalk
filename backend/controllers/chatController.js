const ChatModel = require("../models/chatModel");

const ChatController = {
  getMessages: (req, res) => {
    ChatModel.getAllMessages((err, results) => {
      if (err) throw err;
      res.json(results);
    });
  },
  saveMessage: (req, res) => {
    const { sender, message } = req.body;

    // Simpan pesan pengguna
    ChatModel.saveMessage(sender, message, (err, result) => {
      if (err) {
        console.error("Error saving user message:", err);
        return res.status(500).json({ error: "Failed to save message." });
      }

      // Respons sederhana berdasarkan pesan pengguna
      let assistantMessage = {
        sender: "assistant",
        message: "This is an auto-generated response.",
      };

      // Logika respons sederhana
      if (
        message.toLowerCase().includes("hi") ||
        message.toLowerCase().includes("hello")
      ) {
        assistantMessage.message = "Hello! How can I assist you today?";
      } else if (message.toLowerCase().includes("bye")) {
        assistantMessage.message = "Goodbye! Have a great day!";
      } else if (message.toLowerCase().includes("how are you")) {
        assistantMessage.message =
          "I'm just a program, but I'm doing well. How about you?";
      }

      // Simpan balasan asisten ke database
      ChatModel.saveMessage(
        assistantMessage.sender,
        assistantMessage.message,
        (err, result) => {
          if (err) {
            console.error("Error saving assistant message:", err);
            return res
              .status(500)
              .json({ error: "Failed to save assistant message." });
          }
          res.json(assistantMessage);
        }
      );
    });
  },
};

module.exports = ChatController;
