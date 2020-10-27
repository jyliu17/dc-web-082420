

// "https://aramajapan.com/wp-content/uploads/2014/10/aramajapan_cowboy-bebop.jpg"

const Post = (props) => {
    let {image, artist, title, dimensions } = props.paintingData
    return (
         <div className="col-md mb-4 d-flex">
                <div  className="card p-3 flex-fill">
                    <h5 className="card-header">{artist.name}</h5>
                    <img src={image} className="card-img-top"  alt=""></img>

                    <div className="card-body">
                        <h5 className="card-title">{title}</h5>
                        <p className="card-text">{`${dimensions.height}x${dimensions.width}`}</p>

                        <ul className="list-group list-group-flush">
                            {/* <Comment /> */}
                        </ul>

                        {/* <div className="card-footer mt-2">
                            <form>
                                <div className="form-group">
                                    <label htmlFor="commentInput">Comment:</label>
                                    <input type="text" className="form-control" id="commentInput" placeholder="enter text here..."></input>
                                </div>
                                <button href="#" className="btn btn-primary">Submit</button>
                            </form>
                        </div> */}
                    </div>
                </div>  
            </div>
    )
}

export default Post 
