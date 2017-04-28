import React from 'react';
import EggsContainer from '../containers/EggsContainer';
import OmeletteShow from '../containers/OmeletteShow';

const Layout = (props) => {
  return(
    <div>
      { props.children }
    </div>
  )
}

export default Layout;
