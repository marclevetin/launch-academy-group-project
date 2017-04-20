import React from 'react';
import { Route, IndexRoute } from 'react-router';
import Layout from './containers/Layout';
import NewUserForm from './components/NewUserForm'

let routes = (
  <Route path="/" component={Layout}>
    <Route path="users/new" component={NewUserForm}/>
  </Route>
);

export default routes;
