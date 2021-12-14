import React, { useState, useEffect } from 'react';
import axios from 'axios';


const App = () => {
  useEffect(() => {
    axios.get('http://localhost:3000/registrants')
      .then((response) => {
        console.log(response);
      })
      .catch((error) => {
        console.log(error);
      })
  });

  return (
    <h1>
      React App
    </h1>
  )
}

export default App
