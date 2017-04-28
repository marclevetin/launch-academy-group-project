import React, { Component } from 'react';
import Eggstile from '../components/Eggstile';

class EggsContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      eggs: []
    }
    this.getData = this.getData.bind(this);
  }
  getData() {
    fetch('http://localhost:3000/api/v1/omelettes.json')
    .then(response => {
      if(response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status} ($response.statusText)`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(body => {
      this.setState({eggs: body["omelette"]});
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount() {
    this.getData();
  }

  render() {

    let newEggs = this.state.eggs.map((egg) => {
      return (
        <Eggstile
        id={egg.id}
        key={egg.id}
        title={egg.title}
        ingredients={egg.ingredients}
        description={egg.description}
        photo={egg.photo.url}
      />
    )
  });
  return(
      <div>
        {newEggs}
      </div>
    )
  }
}

export default EggsContainer;
