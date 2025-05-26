# ⚡ ProofOfPower 🔥

**ProofOfPower** is an innovative smart contract built for the [CoreDAO](https://coredao.org/) blockchain. It tracks and rewards users based on how gas-efficient they are in their interactions. This gamifies gas optimization and encourages sustainable dApp usage.

---

## 🚀 Overview

> "In a world driven by power, be the one who saves it."

`ProofOfPower` monitors users’ interactions and logs their gas usage. It then calculates their average gas consumption and rewards the most efficient users. This concept brings a **green incentive layer** to CoreDAO by encouraging smart, minimal-cost blockchain interactions.

---

## 🌐 Deploy On: CoreDAO

✅ EVM-Compatible  
✅ Optimized for low-gas interactions  
✅ Deployable via Remix, Hardhat, or Foundry  

---

## 📦 Features

- 🔹 Tracks gas used per user interaction  
- 🔹 Calculates average gas per user  
- 🔹 Emits real-time events on efficient interactions  
- 🔹 Admin reset functionality  
- 🔹 Extensible design for NFT rewards or gamification  

---

## 📜 Smart Contract Summary

```solidity
function logInteraction() external;
function getAverageGas(address user) external view returns (uint256);
function resetUser(address user) external onlyOwner;
