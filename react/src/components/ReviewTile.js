import React from 'react';
import { Link } from 'react-router';

const ReviewTile = (props) => {
  return(
  <div className="review row">
    <div className="review-header ">
    <a href={`/omelettes/${props.id}`} >
      <div className="eggbold">{props.title}</div>
    </a>

    <p>{props.description}</p>
    <div>
      <a href={`/omelettes/${props.id}`}><img src={props.photo} className="list-item-image"/></a>
    </div>
  </div>
  )
}

export default Eggstile;
