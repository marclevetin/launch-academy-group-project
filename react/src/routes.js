import React from 'react';
import { Route, IndexRoute } from 'react-router';
import Layout from './components/Layout';
import EggsContainer from './containers/EggsContainer';
import OmeletteShow from './containers/OmeletteShow';

let routes = (
    <Route path="/" component={Layout}>
      <IndexRoute component={EggsContainer} />
      <Route path='/omelettes/:id' component={OmeletteShow} />
    </Route>
);

export default routes;
