import React, { Component } from 'react'

export default class SearchForm extends Component {
    render() {
        return (
            <>
            <form className="form-inline">
                <input 
                    onChange={(event) => this.props.updateInput(event)} 
                    className="form-control mr-sm-2" 
                    type="search" placeholder="Enter title here" 
                    aria-label="Search" 
                />
                <button className="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
             </form>
            </>
        )
    }
}

