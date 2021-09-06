import React from 'react';
import { createPortal } from 'react-dom';
import PropTypes from 'prop-types';
import { observer, inject } from 'mobx-react';
import Alert from 'react-bootstrap/Alert';

import style from './ErrorList.scss';

/**
 * Intérêt pédagogique : portal & manipulation d'une classe CSS en pure JS.
 */
const ErrorListInt = ({ errorstore }) => errorstore.hasAny && createPortal(
  <aside className={style.ErrorList}>
    {errorstore.errors.map((error, idx) => (
      <Alert
        key={idx /* eslint-disable-line react/no-array-index-key */}
        variant="danger"
        onClose={() => errorstore.remove(idx)}
        dismissible
      >
        {error.title ? (
          <>
            <Alert.Heading>{error.title}</Alert.Heading>
            <p>{error.content}</p>
          </>
        ) : <p>{error.content}</p>}
      </Alert>
    ))}
  </aside>, document.body,
);

ErrorListInt.propTypes = {
  errorstore: PropTypes.shape({
    hasAny: PropTypes.bool.isRequired,
    errors: PropTypes.arrayOf(PropTypes.shape({
      content: PropTypes.string,
      title: PropTypes.string,
    })).isRequired,
    remove: PropTypes.func,
  }).isRequired,
};

const ErrorList = inject('errorstore')(observer(ErrorListInt));

export default ErrorList;
