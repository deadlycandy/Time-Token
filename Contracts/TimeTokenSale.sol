pragma solidity ^0.4.2;

import "./TimeToken.sol"

contract TimeTokenSale {
    address admin;
    TimeToken public tokenContract;
    uint public tokenPrice;
    uint public toeknSold;

    event Sell(address _buyer, uint _amount);

    //Contstructor
    function TimeTokenSale(TimeToken _tokenContract, uint _tokenPrice) public  {
        admin = msg.sender;
        tokenContract = _tokenContract;
        tokenPrice = _tokenPrice;
    }

    function multiply(uint x, uint y) internal pure returns(uint z) {
        require(y == 0 || (z = x * y) / y == x);
    }

    //Allowing user to purchase tokens
    function buyTokens(uint _numberOfTokens) public payable {
        require(msg.value == multiply(_numberOfTokens, tokenPrice));
        require(tokenContract.balanceOf(this) >= _numberOfTokens);
        require(tokenContract.transfer(msg.sender, _numberOfTokens));

        tokensSold += _numberOfTokens;

        Sell(msg.sender, _numberOfTokens);
    }

    function endSale() public {
        require(msg.sender == admin);
        require(tokenContract.transfer(admin, tokenContract.balanceOf(this)));

        // Just transfer the balance to the admin
        admin.transfer(address(this).balance);
    }
}
