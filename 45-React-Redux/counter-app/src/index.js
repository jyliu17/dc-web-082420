import React, { Component } from "react";
import ReactDOM from "react-dom";
import "./index.css";
import "./App.css";
import store from './redux/store'
import { Provider} from 'react-redux'
import App from './Components/App'



ReactDOM.render(<Provider store={store}><App /></Provider>, document.getElementById("root"));
// const reducer = (oldState = {count: 0}, action) => {

//   console.log(oldState, action)
//   switch(action.type){
//     case "INCREMENT":
//       return {count: oldState.count + action.payload}
//     case "DECREMENT":
//       return {count: oldState.count - action.payload}
//     default:
//       return oldState
//   }
// }

// const store = createStore(reducer)



// class App extends Component {
//   // componentDidMount(){
//   //   store.subscribe(() => {
//   //     this.forceUpdate()
//   //   })
//   // }

//   render() {
//     return (
//       <div className="App">
//         <ConnectedHeader/>
//         <ConnectedCounter/>
//       </div>
//     );
//   }
// }

// class Header extends Component {
//   renderDescription = () => {
//     const remainder = this.props.count % 5;
//     const upToNext = 5 - remainder;
//     return `The current count is less than ${this.props.count + upToNext}`;
//   };

//   render() {
//     return (
//       <header style={{backgroundColor: this.props.color}} className="App-header">
//         <img src={logo} className="App-logo" alt="logo" />
//         <h1 className="App-title">Welcome to React</h1>
//         <h3>{this.renderDescription()}</h3>
//       </header>
//     );
//   }
// }



// const methodRetunredByCOnnect = (mapstatetoPorps) => {

//   class ConnectComponent extends Component {
    
//     render(){
//       console.log("My props:", this.props);
//       return <Header props={mapstatetoptops}/>
//     }
//   }
//   return BlueHeader 
// }

// const BlueHeader = withColor(Header, "red")


// class Counter extends Component {
//   increment = (num) => {

//     this.props.dispatch({type: "INCREMENT", payload: num})
//   };

//   decrement = (num) => {

//     this.props.dispatch({type: "DECREMENT", payload: num})
//   };

//   render() {
//     return (
//       <div className="Counter">
//         <h1>{store.getState().count}</h1>
//         <button onClick={() => this.decrement(5)}> -5 </button>
//         <button onClick={() => this.decrement(1)}> - </button>
//         <button onClick={() => this.increment(1)}> + </button>
//         <button onClick={() => this.increment(3)}> +3 </button>
//       </div>
//     );
//   }
// }



