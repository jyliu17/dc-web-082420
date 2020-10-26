## Creating a React App

- `create-react-app <app_name>`
- `npm install`

## Challenges With Mod 3 Apps

- document.createElement, appendChild
  - manually manage and manipulate the DOM
- lots of functions and lots of data being passed around
- manually had to refresh page to test

## Node, Node Package Manager, package.json

## JSX and Babel

## Webpack and Modular JS

## Thinking in Components: class vs. functional

#### functional - shorter; more suscint

const App = () => {
return (<div>JSX</div>)
}

function App(){
return (<div>JSX</div>)
}

#### class - extend React.Component; have state and lifecycle methods

class App extends Component {
render(){
return (<div>JSX</div>)
}
}

class App extends React.Component {
render(){
return (<div>JSX</div>)
}
}

## Default exports and imports

# React Props

## Thinking in React

- Planning and drawing boxes around everything
- Component Hierarchy/Tree
- Build Static Components
- Project structure?

## Functional Components

- take in props as its parameter
- return JSX of what this component should look like

## Class Components

- extends React.Component
- needs a render instance method
  - return some JSX

## Props

- a JS object
- Props are passed to other components and can only flow down (passed from parent)
- What does the props object look like?
- Like parameters to the function
- Props are read only

## Object Destructuring

## React Docs

- https://reactjs.org/docs/getting-started.html
