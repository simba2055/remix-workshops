pragma solidity >=0.5.0 <0.7.0;

contract Coin {
    address public minter;

    constructor() public {
        minter = msg.sender;
    }
}