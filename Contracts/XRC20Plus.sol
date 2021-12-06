pragma solidity ^0.8.10;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


contract Plus is ERC20 {
    uint counter =0;

    mapping (uint256 => Micro_Ledger) public Micro_ledger_map;
    
    struct Micro_Ledger{
        address payable Address;
    }
    
    constructor(string memory name,string memory symbol,uint256 totalSupply) ERC20(name, symbol) {
        _mint(msg.sender, uint(totalSupply));
        Plus.Ledger(payable(msg.sender));

        //Test
        //Ledger()
    }

    function Ledger(address payable _to) public{
        uint i=0;
        for(i;i<=counter;i++){
            if(Micro_ledger_map[i].Address != _to && counter ==i){
                Micro_ledger_map[i++] = Micro_Ledger(_to);
                counter++;
            }
        }
    }

    function Submit(address payable _address, uint _total) public payable{
        _address.transfer(_total);
        Ledger(_address);
    }
    
    function Dividends() public payable{
        uint i=0;
        if(address(this).balance!=0){
            uint bal = address(this).balance;
            uint ammount = (totalSupply()/bal);
        
            for (i;i<=counter;i++){
                address payable Pay = Micro_ledger_map[i].Address;
                if(balanceOf(Micro_ledger_map[i].Address) != 0){
                    uint total = ammount * balanceOf(Micro_ledger_map[i].Address);
                    Submit(Pay,total);
                }
            }
        }
    }
    
    function Balance() public returns (uint256) {
        return address(this).balance;
    } 
}