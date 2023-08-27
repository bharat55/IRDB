import React from "react";
import Books from "./Books";
import Book from "./Book";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";

function App() {
  return (
    <Router>
      <div>
        <Routes>
          <Route path="/" element={<Books />} />
          <Route path="/books/:id" element={<Book />} />
        </Routes>
      </div>
    </Router>
  );
}

export default App;
