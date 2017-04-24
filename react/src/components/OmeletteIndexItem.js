import react, { Component } from 'React';

class OmeletteIndexItem extends Component {
  constructor(props) {
    super(props);

  }


  render() {
    return(
      <div className="index-item large-4 medium-6 small-12 columns">
        <img src={this.props.image}/>
      </div>
    )
  }
}
