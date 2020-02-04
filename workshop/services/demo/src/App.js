import React from 'react';
import { BrowserRouter, Route, Link } from 'react-router-dom';
import Secured from './Secured';
import './App.css';

function App() {
 console.log(process.env)
  return (
    <div className="App">
      <header className="App-header">
        
        <p>
          Welcome  to cmt20 workshop
        </p>
        <ul>
          <li>NODE_ENV : {process.env.NODE_ENV}</li>
          <li>REACT_APP_KEYCLOAK_URL : {process.env.REACT_APP_KEYCLOAK_URL || ""} </li>
          <li>REACT_APP_KEYCLOAK_REALM : {process.env.REACT_APP_KEYCLOAK_REALM || ""} </li>
          <li>REACT_APP_KEYCLOAK_CLIENT_ID : {process.env.REACT_APP_KEYCLOAK_CLIENT_ID || ""} </li>
        </ul>
        <BrowserRouter>
        <div className="container">
          <ul>
            <li><Link to="/">public component</Link></li>
            <li><Link to="/secured">secured component</Link></li>
          </ul>
          <Route path="/secured" component={Secured} />
        </div>
      </BrowserRouter>
      </header>
    </div>
  );
}

export default App;
