## Task 4: Private Blockchain Implementation

## Requirements:
- 1.Ganache
- 2.Truffle
- 3.Node.js
- 4.MetaMask extension

  ## Deployment Steps:
- 1.Install truffle
  ``` 
   npm install -g truffle
   ```
- 2.Create project folders and initialize
 ``` 
   mkdir DigitalDiary
 cd DigitalDiary
truffle init
   ```
- 3.Install Ganache
- 4.Create a file contracts/Healthcare.sol:
   ``` 
   /// SPDX-License-Identifier: MIT
       pragma solidity ^0.8.0;

       contract DigitalDiary {
    struct Entry {
        string content;
        uint256 timestamp;
    }

    mapping(address => Entry[]) public diary;

    function addEntry(string memory _content) public {
        diary[msg.sender].push(Entry(_content, block.timestamp));
    }

    function getEntries() public view returns (Entry[] memory) {
        return diary[msg.sender];
    }
        }


   ```
  5.Create file migrations/2_deploy_contracts.js:
   ``` 
   const DigitalDiary = artifacts.require("DigitalDiary");

      module.exports = function (deployer) {
  deployer.deploy(DigitalDiary);
     };

   ```
 - 6.Configure Metamask to Ganache
  
  7.Update truffle-config.js:
   ``` 
  module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",
      port: 7545,
      network_id: "1337"
    }
  },
  compilers: {
    solc: {
      version: "0.8.0"
    }
  }
  };

   ```
8.Do create your application in index.html
- 9..Compile 
 ``` 
   truffle compile 
   ```
- 10.Make sure that Ganache is Running
- 11.Deploy
 ``` 
   truffle migrate
   ```
- 12.Install http-server via Node.js
- 13.Make sure to Update contract address in html file(npm install -g http-server)
- 14.Start the server and use your Dapp in browser
  

## Results:
