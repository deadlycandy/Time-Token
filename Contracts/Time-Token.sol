pragma solidity ^0.4.2;

contract TimeToken {
    string public name;
    string public symbol;
    string public standard;
    unit256 public totalSupply;

    event Trasnfer();

    event Approval();

    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

    function TimeToken(uint256 _intialSupply) public {

    }

    function transfer(address _to, uint256 _value) public returns(bool success){
        return true;
    }

    function trasferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        return true;
    }

}
