import React, {Component} from 'react'
import {connect} from 'react-redux';

import logo from "../logo.svg";


class Header extends Component {
  renderDescription = () => {
    const remainder = this.props.count % 5;
    const upToNext = 5 - remainder;
    return `The current count is less than ${this.props.count + upToNext}`;
  };

  render() {
    return (
      <header style={{backgroundColor: this.props.color}} className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <h1 className="App-title">Welcome to React</h1>
        <h3>{this.renderDescription()}</h3>
      </header>
    );
  }
}

const mapStateToProps = (storeState) => {
 return {count: storeState.count}
}

export default connect(mapStateToProps)(Header)