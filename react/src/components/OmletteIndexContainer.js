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
        <h2>search bar here</h2>
        { this.props.children }
      </div>
    )
  }
}

export default OmeletteIndexContainer;
