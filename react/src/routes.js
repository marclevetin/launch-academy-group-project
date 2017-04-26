import React from 'react';
import { Route, IndexRoute } from 'react-router';
import Layout from './components/Layout';
import OmeletteIndexContainer from './components/OmeletteIndexContainer'

let routes = (
  <Route path="/" component={Layout}>
    <IndexRoute component={OmeletteIndexContainer} />
  </Route>
);

export default routes;
