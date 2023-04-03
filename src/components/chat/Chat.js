import React, { useEffect, useState } from "react";
import useFetch from "use-http";
import "./Chat.css";
import ChatBox from "../chatbox/ChatBox.js";

const Chat = () => {
  const [showBotFlag, setShowBotFlag] = useState(false);

  return (
    <div className="chat-container">
      <ChatBox showBotFlag={showBotFlag} />
    </div>
  );
};

export default Chat;
