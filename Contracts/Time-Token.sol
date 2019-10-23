pragma solidity ^0.4.2;

contract TimeToken {
    string public name = "Time Token";
    string public symbol = "TT";
    string public standard = "Time Token v1.0";
    unit256 public totalSupply;

    event Trasnfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

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
