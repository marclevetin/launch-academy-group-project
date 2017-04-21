import React from 'react';

const Layout = (props) => {
  return(
    <div>
      <h2>React Omlettes!</h2>
      { props.children }
    </div>
  )
}

export default Layout;
