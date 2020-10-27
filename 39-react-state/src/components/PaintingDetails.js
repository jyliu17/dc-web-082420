

export const PaintingDetails = (props) => {
    
    return props.details.artist ? (
        <div className="m-2">
              <div className="card p-3 flex-fill">
                    <h5 className="card-header">{props.details.artist.name}</h5>
                    <div className="card-body">
                        <h5 className="card-title">{props.details.title}</h5>
                        <p className="card-text">{props.details.hometown}</p>
                    </div>
                </div>  
        </div>
    ) : null
}
