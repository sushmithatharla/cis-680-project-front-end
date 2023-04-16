import "./App.css";
import Chat from "./components/chat/Chat.js";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <div>
          <span className="gvsu-label">WELCOME TO GVSU</span>
          <Chat />
        </div>
      </header>
    </div>
  );
}

export default App;
