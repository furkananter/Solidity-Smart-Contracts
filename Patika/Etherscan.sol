// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;	
/*
    Why Test? 

    Understand and validate the behaviors of your smart contract. Code has a habit of performing not exactly how we intended. Through testing, we can get a better understanding of how our smart contract will function once deployed. 
    Investing in testing saves time later in debugging. Unfortunately, testing won't fix every bug in your smart contract code but it is helpful to you to determine the cause of your bugs. 
    Confidence that any new code added still functions the way the smart contract is intended to and does not introduce any breaking changes. 
    There are two main types of tests that are important when working with smart contracts: 

    Unit Tests : These tests verify a certain single component in your smart contract is performing correctly. This could be a certain function or event that you have created. 

    Integration Tests: These tests verify that the interaction between multiple components inside your smart contract is performing correctly. These components can be internal or external for example when calling another smart contract or getting information from an oracle.

    Testing Frameworks

    Smart contract development frameworks make our lives easier by allowing us to deploy and test smart contracts. The frameworks need to:

    Deploy to a local blockchain
    Have quick and effective testing
    Deploy a smart contract
    Truffle, Hardhat and Foundry are the preferred smart contract development frameworks compatible with JavaScript. 

    There are also alternative frameworks some of them compatible with other languages:

    Brownie (Python)
    Waffle (JS)
    Dapp.Tools (Haskell/CLI)
    SBT (Scala/CLI)
    Epirus (Java)
    Resources:

    https://betterprogramming.pub/the-top-blockchain-developer-frameworks-for-2021-89afa5e7bd04 

    https://chainstack.com/foundry-hardhat-differences-performance/ 

    https://docs.chain.link/docs/create-a-chainlinked-project/


 */