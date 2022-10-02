// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*

 Now that you have learned and created your first smart contracts, the next step is to understand the power and use-cases of smart contracts in the real world.
 We will look at a few use cases here that you can work with to further develop your knowledge of smart contract development. 

*Multi-signature Wallet*

In most transactions, you have 1 sender and 1 receiver. 
The sender is responsible for signing the transaction using their public key which is a way of approving the transaction. 
In another situation, a user might want to transfer shared funds to a contract or wallet address. 
This is common with DAOs that have a shared treasury that members contribute to and then vote on what to do with those funds. 
To address this need, a multi-signature wallet (Multisig) can be created. 
Multisig wallets require multiple users/addresses to sign off on an action before it is committed to the blockchain. 
This is powered by using a smart contract that expects multiple signatures before executing an operation. 
This video will show you how to create a Multisig wallet in Solidity: 

https://www.youtube.com/watch?v=8ja72g_Dac4

*Flash Loans*

Flash loans are a concept from decentralized finance (DeFi) that allow users to receive loans without the requirement of providing collateral. 
A user can borrow funds from a liquidity pool, which are pools of tokens contributed by other users, and use those tokens to make a profit before returning them to the pool. 

This is possible because of two concepts: 
Blockchain Transaction Time - Since there is time between a transaction being made before it is added to the blockchain, there is also time for other transactions to occur that might be related to the first transaction. 
Flash loans can perform the borrowing, selling, and paying back of the loan all in one block.
Smart Contract Computation - Smart contracts can computationally add funds and perform transactions once their functions have been called. 
This allows for someone to borrow funds, perform some operations and then return the funds to the original owner or pool. 
Smart contracts can ensure that there is a profit being made by the borrower so that they are not receiving a loan that they can't pay back. 

Flash loan smart contacts use protocols like Aave to get funds from their liquidity pools. 
This video will show you how to create a flash loan smart contract and connect it to Aave: 

https://www.youtube.com/watch?v=YBm68v6oWXw

*Marketplaces*

A popular use case for smart contracts is working with NFTs (Non-fungible tokens). 
NFTs are a verifiable claim to a digital asset that has some value. 
Marketplaces are where funds and assets are exchanged between sellers and buyers. 
Creating your own marketplace is a great way to understand the relationship between tokens, users, and the smart contracts that allow for these exchanges. 
The concept of a marketplace can also be used in other applications like games where players are earning and trading in-game assets. 
This tutorial will guide you through creating an NFT trading marketplace: 

https://www.youtube.com/watch?v=4Pm1Furz5HM

The world of smart contract development is still relatively new compared to other forms of software development. 
New use cases, protocols, and tools for smart contract development come up almost every week in the world of Web3. 
Hopefully, this course was a helpful way to learn the fundamentals of smart contract development so that you can feel confident in testing new tools on your own. 
Good luck and happy building!

*/