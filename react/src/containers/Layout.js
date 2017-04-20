import React, { Component } from 'react';
import { Link } from 'react-router';

class Layout extends Component {
  constructor(props) {
    super(props);

  }


  render() {
    return(
      <div className="main">
        { this.props.children }
      </div>
    )
  }
}


export default Layout;
