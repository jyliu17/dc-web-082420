

const PaintingDetails = (props) => {


    return (
        <>
        { props.painting ? <div className="m-2">
              <div className="card p-3 flex-fill">
                    <h5 className="card-header">{props.painting.title}</h5>
                    <img src={props.painting.image} className="card-img mh-25 w-50 "  alt=""/>
                    <div className="card-body">
                        <h3 className="card-text">{props.painting.artist.name}</h3>
                        <p className="card-text">{props.painting.artist.hometown}</p>
                    </div>
                </div>  
        </div> : null }
        </>
    ) 
    
 
}

export default PaintingDetails

