#!/usr/bin/env bash

if [ ! -d "${HOME}/.npm-packages" ] ; then
	echo 'NPM_PACKAGES="${HOME}/.npm-packages"' >> ${HOME}/.bash_profile
	echo 'PATH=${PATH}:${NPM_PACKAGES}/bin' >> ${HOME}/.bash_profile
	echo 'NODE_PATH="${NPM_PACKAGES}/lib/node_modules:${NODE_PATH}"' >> ${HOME}/.bash_profile
	echo 'prefix=${HOME}/.npm-packages' >> ${HOME}/.npmrc
	echo 'MANPATH="$NPM_PACKAGES/share/man:$(manpath)"' >> ${HOME}/.bash_profile

	source ${HOME}/.bash_profile

	npm install -g grunt-cli@~0.4.1 bower@~1.3.3 yo cordova@3.5.0-0.2.4
fi