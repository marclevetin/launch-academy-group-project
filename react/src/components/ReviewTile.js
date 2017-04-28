import React from 'react';
import { Link } from 'react-router';

const ReviewTile = (props) => {
  return(
  <div className="review row">
    <div className="review-header">
      <div className="review-user 6 columns">
        <strong>{props.name}</strong>
      </div>
      <div className="review-user text-left 6 columns">
        <span>{props.created_at}</span>
      </div>
    </div>

    <div className="review-body">
      <p>{props.body}</p>
    </div>
  </div>
  )
}

export default ReviewTile;
