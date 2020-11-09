import React, { Fragment } from 'react'
import { Route, Switch, Redirect, withRouter } from 'react-router-dom'
import Profile from './components/profile'
import LoginForm from './components/loginForm'
import Nav from './components/nav'
import NotFound from './components/notFound'
import './App.css'

class App extends React.Component {
  constructor(){
    super()
    this.state = {
      currentUser: null,
      loading: true
    }
  }

  getCurrentUser = currentUser => this.setState({currentUser})

  async componentDidMount(){
    if(localStorage.getItem("token")){
      const headers = {headers: {"Authentication": `Bearer ${localStorage.getItem("token")}`}}
      const res = await fetch('http://localhost:3000/api/v1/profile', headers)
      const currentUser = await res.json()
      this.setState({currentUser, loading: false})

    }else {
      console.log("no tokey");
      this.setState({loading: false})
    }
  }

  render(){
    return (
      <Fragment>
        <Nav logged_in={ !!this.state.currentUser} getCurrentUser={this.getCurrentUser} />
        { !this.state.loading ? <Switch>
          <Route exact path="/" render={() => <Redirect to="/login" />} />
          
          <Route exact path="/profile" render={() => {
           return !this.state.currentUser ? <Redirect to="/login" /> : <Profile {...this.state.currentUser} />
         }} />
         
          <Route exact path="/login" render={()=> {
           return !this.state.currentUser ? <LoginForm getCurrentUser={this.getCurrentUser} /> : <Redirect to='/profile'/>
         }} />

          <Route component={NotFound} />
        </Switch> : null }
      </Fragment>
    )
  }
}

export default withRouter(App)
