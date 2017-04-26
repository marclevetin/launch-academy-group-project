import React, { Component } from 'react';

class Layout extends Component {
  constructor(props){
    super(props);
    this.state = {

    }
  }




  render(){
    return(
      <div>
        <h2>react app shell</h2>
        { this.props.children }
      </div>
    )
  }
}

export default Layout;
