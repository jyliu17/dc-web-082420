import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import logo from './logo.svg';
import './App.css';

import { createStore } from 'redux'

const reducer = (oldState={count: 0}, action) => {

  console.log("Oldstate:", oldState, "Action:", action);

  switch(action.type){

    case "INCREMENT":
      return {count: oldState.count + action.payload}
    case "DECREMENT":
      return {count: oldState.count - action.payload}

    default: 
      return oldState
  }
}

const store = createStore(reducer)

console.log(store.getState())

class App extends Component {

  componentDidMount(){
   store.subscribe(() => this.forceUpdate())
 }

  increment = (num) => {
    store.dispatch({type: "INCREMENT", payload: num})
  };

  decrement = (num) => {
    store.dispatch({type: "DECREMENT", payload: num})
  };

   renderDescription = () => {
    const remainder = store.getState().count % 5;
    const upToNext = 5 - remainder;
    return `The current count is less than ${store.getState().count + upToNext}`;
  };

  render() {
    return (
      <div className="App">
        <Header/>
        <Counter
          renderDescription={this.renderDescription}
          count={store.getState().count}
          increment={this.increment}
          decrement={this.decrement} 
        />
      </div>
    );
  }
}

class Header extends Component {
  render() {
    return (
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <h1 className="App-title">Welcome to React</h1>
        {/* <h3>{this.props.renderDescription()}</h3> */}
      </header>
    );
  }
}

class Counter extends Component {
  // state = { count: 0 };

  

  // renderDescription = () => {
  //   const remainder = this.state.count % 5;
  //   const upToNext = 5 - remainder;
  //   return `The current count is less than ${this.state.count + upToNext}`;
  // };

  render() {
    return (
      <div className="Counter">
        <h1>{this.props.count}</h1>
        <button onClick={() => this.props.increment(1)}> + </button>
        <button onClick={() => this.props.increment(5)}> + 5 </button>
        <button onClick={() => this.props.decrement(1)}> - </button>
        <button onClick={() => this.props.decrement(5)}> - 5 </button>
        <h3>{this.props.renderDescription()}</h3>
      </div>
    );
  }
}

ReactDOM.render(<App />, document.getElementById('root'));