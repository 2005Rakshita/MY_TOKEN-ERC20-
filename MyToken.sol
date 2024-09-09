// SPDX-License-Identifier: MIT
pragma solidity 0.8.25;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract Mtoken is ERC20 {
    constructor(uint256 total_supply) ERC20("Reward_User", "RU") {
        _mint(msg.sender, total_supply);
    }
//burn function anyone can burn thier tokens
     function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
//anyone can transfer the function to the other address
    function transfer(address recipient, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

}
