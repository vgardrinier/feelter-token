pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract FLT is StandardToken {

    string public constant name = "Feelter App token";
    string public constant symbol = "FLT";
    uint8 public constant decimals = 18;

    uint256 public constant INITIAL_SUPPLY = 1000000000 * (10 ** uint256(decimals));

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }
}
