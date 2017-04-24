import React, { Component } from 'react';

class OmeletteIndexContainer extends Component {
  constructor(props) {
    super(props);

    this.state = {
      omelette: null,
      offset: 0,
      data: []
    }

  }

  render() {
    let omeletteItems = this.state.data.map((o) => {
      let clickIdHandler = (id) => {this.clickHandler(q.id)}

    return(
      <h2>search bar here</h2>
      <div className="row">
        { OmeletteIndexItem }
      </div>
    )
  }
}

export default OmeletteIndexContainer;
