pragma solidity ^0.4.2;

import "./TimeToken.sol"

contract TimeTokenSale {
    address admin;
    TimeToken public tokenContract;
    uint public tokenPrice;
    uint public toeknSold;

    event Sell(address _buyer, uint _amount);

    function TimeTokenSale(TimeToken _tokenContract, uint _tokenPrice) public  {

    }

    function multiply(uint x, uint y) internal pure returns(uint z) {

    }

    function buyTokens(uint _numberOfTokens) public payable {

    }

    function endSale() public {
        
    }
}
