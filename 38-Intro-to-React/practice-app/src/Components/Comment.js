import React from 'react'

export const Comment = (props) => {
    return (
        <div className="list-group-item">{props.commentdata.comment}<br></br>
            <small className="text-muted">{props.commentdata.userName}</small>
        </div>
    )
}

