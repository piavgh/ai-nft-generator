# AI NFT Generator

## Technology Stack & Tools

- Solidity (Writing Smart Contracts & Tests)
- Javascript (React & Testing)
- [Foundry](https://getfoundry.sh/) (Development Framework)
- [Ethers.js](https://docs.ethers.io/v5/) (Blockchain Interaction)
- [React.js](https://reactjs.org/) (Frontend Framework)
- [NFT.Storage](https://nft.storage/) (Connection to IPFS)
- [Hugging Face](https://huggingface.co/) (AI Models)

## Requirements For Initial Setup
- Install [Rust](https://www.rust-lang.org/tools/install)
- Install [Foundry](https://book.getfoundry.sh/getting-started/installation)
- Install [NodeJS](https://nodejs.org/en/)

## Setting Up
### 1. Clone/Download the Repository

### 2. Install Dependencies:
`$ yarn install`

### 3. Setup .env file:
Before running any scripts, you'll want to create a .env file with the following values (see .env.example):

- **REACT_APP_HUGGING_FACE_API_KEY=""**
- **REACT_APP_NFT_STORAGE_API_KEY=""**

You'll need to create an account on [Hugging Face](https://huggingface.co/), visit your profile settings, and create a read access token. 

You'll also need to create an account on [NFT.Storage](https://nft.storage/), and create a new API key.

### 4. Run tests
`$ forge test`

### 5. Start Anvil node
`$ anvil`

### 6. Run deployment script
In a separate terminal execute:
`$ forge create --rpc-url "$ETH_RPC_URL" src/NFT.sol:NFT --constructor-args "AI Generated NFT" "AINFT" 1000000000000000`

Then get the deployed address

### 7. Change frontend `app/src/config.json` file
For example:

```json
{
    "5": {
        "nft": {
            "address": "0xc156cd42DEe4dfeB1B6371FB22BA2fC41732Fe45"
        }
    }
}
```

- `5` is ID of Goerli network
- `0xc156cd42DEe4dfeB1B6371FB22BA2fC41732Fe45` is the newly deployed address

### 7. Start frontend
`$ cd app`
`$ yarn start`
