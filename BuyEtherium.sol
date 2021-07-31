pragma solidity ^0.4.24;
contract BuyToken
{
    
    function Ethbuy(address owner) public payable
    {
        owner.transfer(msg.value);
    }
    
    function balance(address owner) public view returns(uint accountBalance)
    {
        accountBalance = owner.balance;
    }
}
