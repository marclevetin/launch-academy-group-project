import React from 'react';
import { Link } from 'react-router';

const Eggstile = (props) => {
  return(
    <div className="center">
      <div>
        <div className="grow">
          <Link to={`/omelettes/${props.id}`}><img src={props.photo} className="list-item-image"/></Link>
        </div>

        <a href={`/omelettes/${props.id}`} >
          <div className="eggbold">{props.title}</div>
        </a>

        <p>{props.description}</p>
      </div>
    </div>
  )
}

export default Eggstile;
