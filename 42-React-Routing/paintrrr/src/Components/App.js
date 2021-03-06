import React, { Component } from 'react'
import { Route, Switch } from 'react-router-dom'

// Components
import  PaintingContainer  from './PaintingContainer'
import PaintingDetails from './PaintingDetails'
import Navbar from './Navbar'
import About from './About'
import {NotFound} from './NotFound'

const URL = 'http://localhost:3002/paintings'

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
    
    return (
      <div className="bg-primary">
        <Navbar updateInput={this.updateInput} />
        <Switch>
        
          <Route path='/paintings/:id' render={(props) => {
            console.log(props)
            //How do we get this painting data passed in, without our old click event?
            
            let paintingId = props.match.params.id
            let currentPainting = this.state.paintingData.find(painting => painting.id === paintingId)
            return <PaintingDetails painting={currentPainting} />
          }}
          />

          <Route  path="/paintings" render={() => {
              return <>
               <PaintingContainer
                 paintingData={this.state.paintingData}
                selectPainting={this.selectPainting}
                input={this.state.inputChars} 
              /></> 
            }}
          />

          <Route exact path='/' component={About} />

          <Route component={NotFound} />

        </Switch>

      </div>
    )
  }
}

