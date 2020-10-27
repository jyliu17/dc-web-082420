
import Post from './Post'
import paintings from '../data/paintings'

import React, { Component } from 'react'

export default class PostContainer extends Component {
    
  

    render() {
  
        return (
            <div className="container row">
                 {paintings.filter(painting => {
                     return painting.title.includes(this.props.input)
                 }).map(painting => <Post paintingData={painting} />)}
         
            </div>
        )
    }
}




// export default class PostContainer extends Component {

//     render() {
  
//         return (
//             <div className="container row">
//                 {paintings.filter(painting=> { return painting.title.toLowerCase().includes(this.props.searchInput)})
//                 .map(painting => <Post key={painting.id} paintingData={painting} />)
//                 }
         
//             </div>
//         )
//     }
// }