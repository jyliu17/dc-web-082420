import Post from './Post'
import data from '../data/data'

import React, { Component } from 'react'

export default class PostContainer extends Component {
    
    

    render() {
        console.log(this.props)
        return (
            <div className=" container row">
            {data.map(painting => {return <Post paintingData={painting}/>})}
            </div>
        )
    }
}


