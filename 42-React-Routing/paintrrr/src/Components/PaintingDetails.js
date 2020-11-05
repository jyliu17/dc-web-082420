

const PaintingDetails = (props) => {


    return (
        <>
        { props.painting ? <div className="m-2">
              <div className="card p-3 flex-fill">
                    <h5 className="card-header">{props.painting.artist.name}</h5>
                    <div className="card-body">
                        <h5 className="card-title">{props.painting.title}</h5>
                        <p className="card-text">{props.painting.hometown}</p>
                    </div>
                </div>  
        </div> : null }
        </>
    ) 
    
 
}

export default PaintingDetails

