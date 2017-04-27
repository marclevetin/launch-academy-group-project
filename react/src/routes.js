import React from 'react';
import { Route, IndexRoute } from 'react-router';
import Layout from './components/Layout';
import EggsContainer from './containers/EggsContainer';

let routes = (
  <Route path="/" component={Layout}>
    <IndexRoute component={EggsContainer} />

  </Route>
);

export default routes;
