import React from "react";
import { withRouter } from "react-router";
import { Button, Form, Segment, Message } from "semantic-ui-react";

class LoginForm extends React.Component {

  state = {
    username: "",
    password: ""
  };

  handleChange = (e, { name, value }) => {
    this.setState({ [name]: value });
  };

  handleLoginSubmit = async () => {
    const {username, password} = this.state 

    const credentials = {username, password}

    const reqPackage = {}
      reqPackage.headers = {"Content-Type": "application/json"}
      reqPackage.method = "POST"
      reqPackage.body = JSON.stringify(credentials)

    const res = await fetch(`http://localhost:3000/api/v1/login`, reqPackage)
    const data = await res.json()
    
    if(data.authenticated) {
      console.log(data)
      
      localStorage.setItem("token", data.token)

      this.props.getCurrentUser(data.user)
    } else {
      console.log(data);
    }
  };

  render() {
    return (
      <Segment>
        <Form
          onSubmit={this.handleLoginSubmit}
          size="mini"
          key="mini"
          loading={this.props.authenticatingUser}
          error={this.props.failedLogin}
        >
          <Message
            error
            header={this.props.failedLogin ? this.props.error : null}
          />
          <Form.Group widths="equal">
            <Form.Input
              label="username"
              placeholder="username"
              name="username"
              onChange={this.handleChange}
              value={this.state.username}
            />
            <Form.Input
              type="password"
              label="password"
              placeholder="password"
              name="password"
              onChange={this.handleChange}
              value={this.state.password}
            />
          </Form.Group>
          <Button type="submit">Login</Button>
        </Form>
      </Segment>
    );
  }
}

export default withRouter(LoginForm);
