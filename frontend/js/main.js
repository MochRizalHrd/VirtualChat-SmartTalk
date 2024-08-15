document.addEventListener("DOMContentLoaded", () => {
  const chatWindow = document.getElementById("chat-window");
  const chatInput = document.getElementById("chat-input");
  const sendButton = document.getElementById("send-button");

  const loadMessages = async () => {
    const response = await fetch("http://localhost:3000/api/chat/messages");
    const messages = await response.json();
    chatWindow.innerHTML = "";
    messages.forEach((message) => {
      const messageElement = document.createElement("div");
      messageElement.className = `chat-message ${message.sender}-message`;
      messageElement.innerText = message.message;
      chatWindow.appendChild(messageElement);
    });
  };

  const sendMessage = async () => {
    const message = chatInput.value;
    if (message.trim() !== "") {
      chatInput.value = "";
      const userMessage = {
        sender: "user",
        message: message,
      };
      chatWindow.innerHTML += `<div class="chat-message user-message">${message}</div>`;

      await fetch("http://localhost:3000/api/chat/messages", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(userMessage),
      });

      const assistantMessage = {
        sender: "assistant",
        message: "This is an auto-generated response.",
      };
      chatWindow.innerHTML += `<div class="chat-message assistant-message">${assistantMessage.message}</div>`;
      await fetch("http://localhost:3000/api/chat/messages", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
        },
        body: JSON.stringify(assistantMessage),
      });
    }
  };

  sendButton.addEventListener("click", sendMessage);
  chatInput.addEventListener("keypress", (e) => {
    if (e.key === "Enter") {
      sendMessage();
    }
  });

  // Handle recommended questions click
  const recommendationButtons = document.querySelectorAll(
    ".recommendation-btn"
  );
  recommendationButtons.forEach((button) => {
    button.addEventListener("click", function () {
      chatInput.value = this.textContent;
    });
  });

  loadMessages();
});
