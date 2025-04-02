document.addEventListener("DOMContentLoaded", () => {
  const chatRoomId = document.getElementById("message-form")?.dataset.chatRoomId; // Get chat_room ID

  if (!chatRoomId) {
    console.error("Chat Room ID is missing!");
    return;
  }

  console.log("Chat Room ID:", chatRoomId);
  console.log("Consumer:", window.consumer);

  if (!window.consumer) {
    console.error("ActionCable consumer is missing!");
    return;
  }

  const chatRoomChannel = window.consumer.subscriptions.create(
    { channel: "ChatRoomChannel", room_id: chatRoomId },
    {
      received(data) {
        console.log("New Message Received:", data.message);
        const messageElement = document.createElement("p");
        messageElement.innerHTML = `<strong>User:</strong> ${data.message}`;
        document.getElementById("messages").appendChild(messageElement);
      }
    }
  );

  document.getElementById("message-form").addEventListener("submit", function (e) {
    e.preventDefault();
    const message = document.getElementById("message-input").value;

    console.log("Sending message:", message);
    console.log("Consumer Object:", window.consumer);

    fetch(`/chat_rooms/${chatRoomId}/messages`, {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').content
      },
      body: JSON.stringify({ message: { content: message } })
    })
      .then(response => response.json())
      .then(data => console.log("Message sent successfully:", data))
      .catch(error => console.error("Error sending message:", error));

    document.getElementById("message-input").value = "";
  });
}); // ✅ Correct closing of the event listener
