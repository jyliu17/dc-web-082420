import React, { Component } from 'react'
import { Route } from 'react-router-dom'

// Components
import  PaintingContainer  from './PaintingContainer'
import PaintingDetails from './PaintingDetails'
import Navbar from './Navbar'
import About from './About'

const URL = 'http://localhost:3000/paintings'

export default class App extends Component {

  state = {
    paintingData: [],
    inputChars: "",
    currentPainting: null
  }

  async componentDidMount() {
    const response = await fetch(URL)
    const paintingData = await response.json()
    this.setState({ paintingData })
  }
  
  updateInput = inputChars => { this.setState({ inputChars })}

  selectPainting = id => {this.setState({currentPainting: id})}

  render() {
    const currentPainting = this.state.paintingData.find(painting => painting.id === this.state.currentPainting)
    return (
      <div className="bg-primary">
        <Navbar updateInput={this.updateInput} />
        <Route exact={true} path='/' component={About} />
        
        <Route path="/paintings" render={() => {
          return <>
          <PaintingContainer
            paintingData={this.state.paintingData}
            selectPainting={this.selectPainting}
            input={this.state.inputChars} 
          /></> 
        }}/>
        <Route exact path='paintings/:id' render={(props) => {
          console.log(props)
          return <PaintingDetails painting={null} />
        }} />
          {/* <Navbar updateInput={this.updateInput}  />
          <About />
          <PaintingDetails painting={currentPainting} />
          <PaintingContainer
            paintingData={this.state.paintingData}
            selectPainting={this.selectPainting}
            input={this.state.inputChars} 
          /> */}
      </div>
    )
  }
}

