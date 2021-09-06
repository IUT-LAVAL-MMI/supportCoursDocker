import React from 'react';
import PropTypes from 'prop-types';
import { observer, inject } from 'mobx-react';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faSpinner } from '@fortawesome/free-solid-svg-icons';

const LoadingIconInt = ({ netstore }) => netstore.hasFetchInProgess && (
<FontAwesomeIcon icon={faSpinner} className="text-success" pulse />
);

LoadingIconInt.propTypes = {
  netstore: PropTypes.shape({
    hasFetchInProgess: PropTypes.bool,
  }).isRequired,
};

const LoadingIcon = inject('netstore')(observer(LoadingIconInt));

export default LoadingIcon;
