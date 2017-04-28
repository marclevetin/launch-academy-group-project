import React from 'react';
import { Link } from 'react-router';

const Eggstile = (props) => {

  return(

<div className="center">

<div>
    <div className="grow">
  <a href={`/omelettes/${props.id}`}><img src={props.photo} className="list-item-image"/></a>
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
