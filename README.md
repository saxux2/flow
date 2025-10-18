
# 🧮 Counter Smart Contract

A simple Solidity smart contract that stores a number on-chain and allows users to **increment** or **decrement** it.

This project is perfect for beginners learning about:
- State variables
- Functions
- Basic user interaction on the Ethereum blockchain

---

## 📜 Contract Details

**Contract Name:** `Counter`  
**Network:** (Depends on your deployment)  
**Deployed Address:** `0x9a95e0EaFa5857b07e0552b3590B763bBb574B64`

---

## 🧠 Smart Contract Code

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    // State variable: stores a number on-chain
    uint256 public count;

    // Function to increment the counter
    function increment() public {
        count += 1;
    }

    // Function to decrement the counter
    function decrement() public {
        // Prevent going below zero
        require(count > 0, "Counter is already zero");
        count -= 1;
    }

    // Function to get the current count (optional, since `count` is public)
    function getCount() public view returns (uint256) {
        return count;
    }
}
```

---

## ⚙️ How to Use

### 1. Deploy with Remix
1. Open [Remix IDE](https://remix.ethereum.org)
2. Create a new file `Counter.sol`
3. Paste the contract code above
4. Compile with Solidity `0.8.20`
5. Deploy using the **Deploy & Run Transactions** tab

### 2. Interact
- `count()` → View the current value (no gas required)
- `increment()` → Increase the count by 1 (requires gas)
- `decrement()` → Decrease the count by 1 (requires gas)

### 3. Verify on Block Explorer
If deployed to a public network (e.g., Sepolia or Ethereum mainnet), you can verify your contract at:  
🔗 [Etherscan Link](https://etherscan.io/address/0x9a95e0EaFa5857b07e0552b3590B763bBb574B64)

---

## 🧩 Example Interaction (Ethers.js)

```javascript
const { ethers } = require("ethers");

const contractAddress = "0x9a95e0EaFa5857b07e0552b3590B763bBb574B64";
const abi = [
  "function count() view returns (uint256)",
  "function increment()",
  "function decrement()"
];

async function main() {
  const provider = new ethers.providers.Web3Provider(window.ethereum);
  const signer = provider.getSigner();
  const counter = new ethers.Contract(contractAddress, abi, signer);

  console.log("Current count:", (await counter.count()).toString());

  const tx = await counter.increment();
  await tx.wait();
  console.log("Incremented! New count:", (await counter.count()).toString());
}

main();
```

---

## 🧑‍💻 Author

- **Deployed by:** `0x9a95e0EaFa5857b07e0552b3590B763bBb574B64`
- **Purpose:** Educational example for Solidity beginners
- **License:** MIT

---

> 💡 _This simple Counter contract is a great first step toward learning smart contract state management and Ethereum transactions._
