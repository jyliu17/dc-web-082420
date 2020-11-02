import React, { Fragment } from 'react'

class Table extends React.Component {

  state = {
    moneyAmount: ""
  }

  renderPlates = (array) => {
    return array.map((x, index) => {
      return <div className="empty-plate" style={{ top: -7 * index }}/>
    })
  }

  onFormChange = (e) => {
    this.setState({ moneyAmount: e.target.value })
  }

  handleSubmit = (e) => {
    e.preventDefault()
    this.props.addMoney(this.state.moneyAmount)
    this.setState({ moneyAmount: "" })
  }

  render() {
    return (
      <Fragment>
        <div className="remaining">
          <h1>You have: ${this.props.funds} remaining!</h1>
          <form onSubmit={this.handleSubmit}>
            <input value={this.state.moneyAmount}
                   onChange={this.onFormChange}
                   placeholder="Add Money"/>
            <input type="Submit"/>
          </form>
        </div>
        <div className="table">
          <div className="stack">
            { this.renderPlates(this.props.eaten) }
          </div>
        </div>
      </Fragment>
    )
  }
}

export default Table