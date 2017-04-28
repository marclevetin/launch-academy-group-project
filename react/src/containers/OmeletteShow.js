import React, { Component } from 'react';
import ReviewTile from '../components/ReviewTile';

class OmeletteShow extends Component {
  constructor(props) {
    super(props)
    this.state = {
      reviews: [],
      omelette: {}
    }

    this.getData = this.getData.bind(this);
  }

  getData() {
    fetch(`http://localhost:3000/api/v1/omelettes/${this.props.params.id}`)
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
      this.setState({ omelette: body["omelette"], reviews: body["reviews"] });
    })
    .catch(error => console.error(`Error in fetch: ${error.message}`));
  }

  componentDidMount() {
    this.getData();
  }

  render() {
    let reviews = this.state.reviews.map((review) => {
      return (
        <ReviewTile
        id={review.id}
        key={review.id}
        body={review.body}
        rating={review.rating}
        created={review.created_at}
        />
      )
    });

    let photo = "";

    if(this.state.omelette.photo) {
      photo = this.state.omelette.photo.url;
    }

    return(
      <div className="omelette-show center">
        <div className="omelette-show-tile">
          <div className="omelette-show-title">
            <h1>{this.state.omelette.title}</h1>
          </div>
          <div className="omelette-show-image">
            <img src={photo} />
          </div>
          <div className="omelette-show-description">
            {this.state.omelette.description}
          </div>
          <div className="ingredients">
          </div>
        </div>
        <div className="reviews">
          {reviews}
        </div>
      </div>
    )
  }
}

export default OmeletteShow;
