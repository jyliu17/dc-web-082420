import React, { Component } from 'react';
import SushiContainer from './containers/SushiContainer';
import Table from './containers/Table';

// Endpoint!
const API = "http://localhost:3000/sushis"

class App extends Component {

  state = {
    sushis: [],
    index: 0,
    eaten: [],
    funds: 100
  }

  componentDidMount() {
    fetch(API)
    .then(r => r.json())
    .then(data => {
      this.setState({sushis: data})
    })
  }

  displayedSushis = () => {
    let i = this.state.index % this.state.sushis.length
    return this.state.sushis.slice(i, i+4)
  }

  moreSushi = () => {
    let i = this.state.index
    this.setState({index: i+4})
  }

  eatSushi = (eatenSushi) => {
    if (this.state.funds >= eatenSushi.price) { 
      let newSushis = this.state.sushis.map(sushi => {
        if (sushi.id === eatenSushi.id) { sushi.eaten = true }
        return sushi
      })

      this.setState({sushis: newSushis,
                    eaten: [...this.state.eaten, eatenSushi.price],
                    funds: this.state.funds - eatenSushi.price})
    }
  }

  addMoney = (amount) => {
    this.setState({funds: this.state.funds + parseInt(amount)})
  }

  render() {
    return (
      <div className="app">
        <SushiContainer sushis={this.displayedSushis()}
                        moreSushi={this.moreSushi}
                        eatSushi={this.eatSushi}/>
        <Table eaten={this.state.eaten}
               funds={this.state.funds}
               addMoney={this.addMoney}/>
      </div>
    )
  }
}

export default App;