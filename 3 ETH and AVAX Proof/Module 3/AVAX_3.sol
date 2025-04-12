// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Token {
    string public tokenName = "AvaxModule";
    uint public totalSupply = 0;
    mapping (address => uint) public _mybalances;
    address public owner;
    constructor() {
        owner = msg.sender;
    }
    // Only authur can mint the token
    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    function mint(address _reciver, uint _myamount) public onlyOwner {
        totalSupply += _myamount;
        _mybalances[_reciver] += _myamount;
    }

    function burn(uint _myamount) public {
        require(_mybalances[msg.sender] >= _myamount, "Insufficient balance");
        totalSupply -= _myamount;
        _mybalances[msg.sender] -= _myamount;
    }
    // Transfer Function
    function transfer(address _transferto, uint _myamount) public {
    require(_mybalances[msg.sender] >= _myamount, "Not enough balance to complete the transfer");
    _mybalances[msg.sender] -= _myamount;
    _mybalances[_transferto] += _myamount;
}
}
