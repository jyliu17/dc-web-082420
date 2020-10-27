import React, { Component } from 'react'

// Components
import  PostContainer  from './PostContainer'
import { Navbar } from './Navbar'


export default class App extends Component {

  state = {
    inputChars: "",
    currentPainting: {}
  }
  
  updateInput = (event) => {
        this.setState(prevState => console.log(prevState) ,{
          searchInput: event.target.value
        })
        
    }

  render() {
    return (
      <div className="bg-primary">
          <Navbar updateInput={this.updateInput}  />
          <PostContainer input={this.state.inputChars} />
      </div>
    )
  }
}

