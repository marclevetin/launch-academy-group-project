import React from 'react';
import { Link } from 'react-router';

const Eggstile = (props) => {

  return(

  <div className="list-item text-center medium-4 small-12 columns">
    <a href={`/omelettes/${props.id}`} >
      <div className="eggbold">{props.title}</div>
    </a>

    <p>{props.description}</p>
    <div>
      <a href={`/eggs/${props.id}`}><img src={props.photo} className="list-item-image"/></a>
    </div>
  </div>

  )
}

export default Eggstile;
