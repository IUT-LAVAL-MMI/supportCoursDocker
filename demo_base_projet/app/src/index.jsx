import React from 'react';
import { render } from 'react-dom';
import { Provider } from 'mobx-react';
// eslint-disable-next-line import/no-extraneous-dependencies, no-unused-vars
import all from 'mobx-react-lite/batchingForReactDom';
import { BrowserRouter } from 'react-router-dom';
import { ToDoListManager } from './business/ToDoListManager';
import { ErrorManager } from './business/ErrorManager';
import { NetworkManager } from './business/NetworkManager';
import { App } from './components/App/App';

import './index.scss';

// 3 stores différents
const TDL_STORE = new ToDoListManager(); // Store "métier" : gestionnaire de liste
const ERR_STORE = new ErrorManager(); // Store technique : gestion des exceptions
const NETWORK_STORE = new NetworkManager(); // Store technique : gestion des appels réseaux

render(
  <BrowserRouter>
    <Provider mainstore={TDL_STORE} errorstore={ERR_STORE} netstore={NETWORK_STORE}>
      <App />
    </Provider>
  </BrowserRouter>,
  document.getElementById('appMountPoint'),
);
