// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.8.0;

/**
 * @title Wallet
 * @dev send and receive funds
 */
contract Wallet {
    
    address public owner;
    bool public pause;
    
    constructor(){
        owner = msg.sender;
    }
    
    // only owner modifier
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    
    struct Balance {
        uint256 balance;
        uint256 paymentNo;
        mapping(uint256 => Payment)payments;
    }
    
    // payment record
    struct Payment {
        uint256 amount;
        uint256 timestamp;
    }
    
    mapping (address => Balance) public balances;
    
    event Send(address sender, uint256 amount, uint256 index, uint256 timestamp);
    
    /**
     * increase the balance of the sender
     * increase the index for payment (paymentNo)
     * get the current index and then bind payment record to it
     * keep a payment record as amount and timestamp
    */
    
    
    function send() public payable{
        balances[msg.sender].balance += msg.value;
        balances[msg.sender].paymentNo += 1;
        uint256 index = balances[msg.sender].paymentNo;
        Payment memory payment = Payment(msg.value, block.timestamp);
        balances[msg.sender].payments[index]=payment;
        
        emit Send(msg.sender, msg.value, index, block.timestamp);
    }
    
    // get balance of a given address
    function getBalance(address _address)public view returns(uint256){
        return balances[_address].balance;
    }
    
    // conver wei to ether
    function convert(uint256 _wei)public pure returns(uint256){
        return _wei/1 ether;
    }
    
    /**
     * withdraw money to the caller
     * check for non-zero balance 
     * check if caller has sufficient funds
     * deduct money from caller's account 
    */
    function withdraw(uint256 _amount)public{
        require(_amount != 0 && balances[msg.sender].balance >= _amount, 'Zero can not be withdrawn OR Insufficient funds.');
        balances[msg.sender].balance -= _amount;
        msg.sender.transfer(_amount);
    }
    
}
