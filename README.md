# **XRC1170** [Beta]

So most dapps will have Owners and each owner may have shards in the dapp This standard will have the IP of the contract as an shard token, Each **shard** is equal to any other shard and will have a yield based on that proportion the the overall pool of capital generated by the contract

The XRC1170 standard is a token dividend standard for the XDC Network this standard is for smart contracts that require dividends to their token holders or for developers to sell stake in their contracts.

### **Example Execution:**

```solidity
pragma solidity ^0.8.0;
contract DividendContract is XRC1170{
	constructor() public XRC1170(NAME,SYMBOL,TOTAL_SUPPLY){}
	
	function Payment(uint _int) public payable{
		// Code for function
		Dividends();	
	}
}
```

To issue dividends you can call the Dividends() function and all tokens held in contract address  will will be issued to shard holders

### **Diagram:**

This contract standard is for contracts that will yield profits for the token holders based on contract performance

# ![XRC](https://user-images.githubusercontent.com/16103963/141028633-bd7a483c-e422-4b9a-b3ec-df7c9c8026ae.png)
