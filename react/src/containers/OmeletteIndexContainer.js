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
        <form action="/meetups/new" method="post" class="form_name">
  <label for="name"class="white_words">Name</label>
  <input type="text" name="name" value=<% %>>
  <br />




        { this.props.children }
      </div>
    )
  }
}

export default OmeletteIndexContainer;
