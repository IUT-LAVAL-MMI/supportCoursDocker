import React from 'react';
import Container from 'react-bootstrap/Container';
import {
  Switch,
  Route,
  Redirect,
} from 'react-router-dom';
import ComponentErrorHandler from '../ErrorManagement/ComponentErrorHandler';
import ErrorList from '../ErrorManagement/ErrorList';
import NavBar from '../NavBar/NavBar';
import ToDoList from '../ToDoList/ToDoList';
import Footer from '../Footer/Footer';

/**
 * Intérêt pédagogique : encapsultation par un gestionnaire d'erreur ; Routage.
 */
export const App = () => (
  <ComponentErrorHandler>
    <ErrorList />
    <header>
      <NavBar />
    </header>
    <main role="main">
      <Container>
        <Switch>
          <Route path="/sql">
            <ToDoList listName="sqlList" />
          </Route>
          <Route path="/mongo">
            <ToDoList listName="mongoList" canHaveExtraArgs />
          </Route>
          <Route exact path="/">
            <Redirect to="/sql" />
          </Route>
        </Switch>
      </Container>
    </main>
    <Footer />
  </ComponentErrorHandler>
);

export default App;
