import React from 'react';
import Gallery from './Gallery';

const Layout = (props) => {
  return(
    <div>
      <h2>Eggxit Review! (React)</h2>

      <Gallery />
      { props.children }
    </div>
  )
}

export default Layout;
