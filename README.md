# OLI Distributed Wallet

A distributed wallet to send and receive funds

**Table of Contents**

<!-- MDTOC maxdepth:6 firsth1:0 numbering:1 flatten:0 bullets:0 updateOnSave:1 -->

1. [Description](#description)   
2. [API Documentation](#api-documentation)   
3. [Overview of the Stack](#overview-of-the-stack)   
4. [Getting Started](#getting-started)   
&emsp;4.1. [Prerequisites](#prerequisites)   
&emsp;4.2. [Installing](#installing)   
5. [Built With](#built-with)   
6. [Contributing](#contributing)   

<!-- /MDTOC -->

## Description

The current project demonstrates a distributed wallet to send and receive funds

## Overview of the Stack

- **Vue.js:** as the JavaScript framework for the frontend and handling all the view-related stuff
- **Ethereum:** as decentralized and open source blockchain.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

Please make sure you've already installed Truffle and enabled the MetaMask extension in your browser.

```
* Truffle v5.1.26 (core: 5.1.26)
* Solidity >= v0.5.16 (solc-js)
* Node >= v12.16.3
* Web3.js >= v1.2.7
* Metamask Chrome extension (connected with Volta)
```

Note: Please follow the [steps](https://energyweb.atlassian.net/wiki/spaces/EWF/pages/703201459/Volta+Connecting+to+Remote+RPC+and+Metamask) to connect Metamask with Volta.

###  Installing
Follow the steps below to have development environment running:
1. Clone the repository:
```
$ git clone https://github.com/olisystems/oli-wallet.git
```

2. Change directory to `oli-wallet` folder and install all requisite npm packages (as listed in `package.json`):
```
$ cd oli-wallet
$ npm install
```
3. Compile the smart contracts:
```
$ cd truffle
$ npm run compile
```
This will create the smart contract artifacts in folder `app\src\assets\js\contracts`.

4. Migrate smart contracts to `volta` chain:
```
$ npm run migrate
```

5. Test smart contracts:
```
$ npm run test
```

6. Compiles and hot-reloads for development, run the following command inside `app` directory:
```
$ cd app
$ npm run serve
```
Navigate to `localhost:8080` in your browser.

7. Compiles and minifies for production:
```
$ npm run build
```
## Built With

- [Ethereum](https://www.ethereum.org/) - Ethereum is a decentralized platform that runs smart contracts to make the web faster, safer, and more open.
- [Web3.js](https://web3js.readthedocs.io/en/v1.2.7/#web3-js-ethereum-javascript-api) - A collection of libraries which allow interacting with a local or remote ethereum node, using an HTTP or IPC connection.
- [Vue.js](https://vuejs.org/) - The Progressive JavaScript Framework for building user interfaces.
- [Truffle Framework](http://truffleframework.com/) - Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier.

## Contributing

Pull requests are welcome.

1. Fork the repository.
2. Create your new feature branch: `git checkout -b new-feature-branch`
3. Stage your changes: `git add .`
4. Commit the changes: `git commit -m "add commit message"`
5. `push` to the branch: `git push origin new-feature-branch`
6. Submit a `pull request`.
