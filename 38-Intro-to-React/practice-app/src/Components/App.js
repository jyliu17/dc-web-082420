import React, { Component, Fragment } from "react";

// Components
import  PostContainer  from './PostContainer'
import { Navbar } from './Navbar'

function App() {
  return (
    <div className="App">
      <Fragment>
        <Navbar/>
        <PostContainer/>
      </Fragment>
    </div>
  );
}

export default App;
