import React from 'react';
import PropTypes from 'prop-types';
import { observer, inject } from 'mobx-react';
import Alert from 'react-bootstrap/Alert';

/**
 * Intérêt pédagogique : Gestion des erreurs de composants ; vision "classe" d'un composant
 */
@inject('errorstore')
@observer
class ComponentErrorHandler extends React.Component {
  static propTypes = {
    errorstore: PropTypes.shape({
      register: PropTypes.func,
    }).isRequired,
    children: PropTypes.arrayOf(PropTypes.node),
  };

  static defaultProps = {
    children: [],
  };

  constructor(props) {
    super(props);
    this.state = { errorCaught: false };
  }

  static getDerivedStateFromError(error) {
    return {
      errorCaught: true,
      error,
    };
  }

  componentDidCatch(error) {
    const { errorstore } = this.props;
    errorstore.register(error, 'Erreur d\'interface', () => {
      this.setState({ errorCaught: false });
    });
  }

  render() {
    const { errorCaught } = this.state;
    const { children } = this.props;
    return errorCaught ? (
      <>
        <Alert variant="danger">
          Erreur d&lsquo;interface !
        </Alert>
      </>
    ) : children;
  }
}

export default ComponentErrorHandler;
