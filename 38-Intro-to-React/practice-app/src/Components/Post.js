import { Comment } from './Comment'

// "https://aramajapan.com/wp-content/uploads/2014/10/aramajapan_cowboy-bebop.jpg"

const Post = (props) => {
    return (
         <div className="col-sm mb-4">
                <div className="card" style={{maxWidth: "28rem"}}>
    <h5 className="card-header">{props.paintingData.artist.name}</h5>
                    <img src={props.paintingData.image} className="card-img-top" style={{maxHeight: "18rem", maxWidth: "18rem" }} alt=""></img>

                    <div className="card-body">
    <h5 className="card-title">{props.paintingData.title}</h5>
                        <p className="card-text">#seeYouLaterSpaceCowBoy</p>

                        <ul className="list-group list-group-flush">
                            {/* {this.props.postData.map(
                                comment => <Comment key={comment.id} commentdata={comment}/>
                            )} */}
                        </ul>

                        <div className="card-footer mt-3">
                            <form>
                                <div className="form-group">
                                    <label htmlFor="commentInput">Comment:</label>
                                    <input type="text" className="form-control" id="commentInput" placeholder="enter text here..."></input>
                                </div>
                                <button href="#" className="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>  
            </div>
    )
}

export default Post 
