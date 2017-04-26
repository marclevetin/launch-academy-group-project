import React, { Component } from 'react';

class OmeletteIndexContainer extends Component {
  constructor(props) {
    super(props);

    this.state = {
      omelette: null,
      data: []
    }

  }

  render() {

    return(
      <div>
        <h2>OmeletteIndexContainer</h2>
        <input type='text' placeholder="search bar here" />
        { this.props.children }
      </div>
    )
  }
}

export default OmeletteIndexContainer;
