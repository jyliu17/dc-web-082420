

const Post = ({ paintingData, selectPainting }) => {

    let { image, artist, title, dimensions, id } = paintingData

    return (
         <div  className="col-md mb-4 d-flex">
                <div  className="card p-3 flex-fill">
                    <h5 className="card-header">{artist.name}</h5>
                    <img src={image} className="card-img-top"  alt=""></img>

                    <div className="card-body">
                        <h5 className="card-title">{title}</h5>
                        <p className="card-text">{`${dimensions.height}x${dimensions.width}`}</p>
                    </div>
                <button type="button" className="btn btn-primary" onClick={() => selectPainting(id)}>More info</button> 
                </div> 
            </div>
    )
}

export default Post 
