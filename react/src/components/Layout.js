import React from 'react';

const Layout = (props) => {
  return(
    <div>
      <h2>Eggxit Review! (React)</h2>
      { props.children }
    </div>
  )
}

export default Layout;
