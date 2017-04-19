import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import { browserHistory } from 'react-router';

import routes from './routes';
import Root from './components/Root';

let reactDOMRender = (element) => {
  ReactDOM.render(
    <Root browserHistory={browserHistory} routes={routes} />,
    element
  );
};

$(function() {
  ReactDOM.render(
    <h1>ommmmmmlette</h1>,
    document.getElementById('app')
  );
});
