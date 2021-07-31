pragma solidity ^0.4.24;
contract Test1
{
    uint public count = 0;
    address owner;
    struct Item
    {
        uint id;
        string name;
        uint age;
    }
    
    mapping(uint=>Item) details;
    
    event add(uint count);
    
    constructor() public payable
    {
        owner = msg.sender;
    }
    
    modifier onlyOwner()
    {
        require(owner == msg.sender);
        _;
    }
    
    function addPerson(string _name, uint _age) onlyOwner public
    {
        count = count + 1;
        emit add(count);
        details[count] = Item({id:count,name:_name,age:_age});
    }
    
    function fetch(uint _id) public view returns(string _name, uint _age)
    {
        _name = details[_id].name;
        _age = details[_id].age;
    }
    
}
