import React from 'react';
import EggsContainer from '../containers/EggsContainer';


const Layout = (props) => {
  return(
    <div>
      <h2>Eggxit Review! (React)</h2>
      { props.children }
    </div>
  )
}

export default Layout;
