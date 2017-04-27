import React from 'react';

const Gallery = (props) => {
  return(
    <div>
      <h2>Gallery</h2>

      <div id="f1_container">
        <div id="f1_card" class="shadow">
          <div class="front face">
            <img src="http://res.cloudinary.com/ds0wwrj3f/image/upload/v1493221911/cheese-and-mushroom-omelette_ai11ag.jpg"/>
          </div>
          <div class="back face center">
          </div>
        </div>
      </div>
      { props.children }
    </div>
  )
}

export default Gallery;
