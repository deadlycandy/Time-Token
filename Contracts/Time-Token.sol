pragma solidity ^0.4.2;

contract TimeToken {
    string public name = "Time Token";
    string public symbol = "TT";
    string public standard = "Time Token v1.0";
    unit256 public totalSupply;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint256 _value
    );

    event Approval(
        address indexed _owner,
        address indexed _spender,
        uint256 _value
    );

    //Link addresses to TimeToken balances
    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;

    //Contract constructor
    function TimeToken(uint256 _intialSupply) public {
        balanceOf[msg.sender] = _intialSupply;
        totalSupply = _intialSupply;
    }

    //Sending tokens from one address to another
    function transfer(address _to, uint256 _value) public returns(bool success){
        require(balanceOf[msg.sender] >= _value);

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        Transfer(msg.sender, _to, _value);
        return true;
    }

    //Approve a valid transaction
    function approve(address _spender, uint256 _value) public returns (bool success) {
        allowance[msg.sender][_spender] = _value;

        Approval(msg.sender, _spender, _value);

        return true;
    }


    function trasferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_value <= balanceOf[_from]);
        require(_value <= allowance[_from][msg.sender]);

        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;

        allowance[_from][msg.sender] -= _value;
        Transfer(_from, _to, _value);
        
        return true;
    }

}
