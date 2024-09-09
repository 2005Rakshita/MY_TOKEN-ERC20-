# Reward_User 
## Overview
This Solidity program incentivizes users to spend over 1000 units of currency within a week. 
The smart contract tracks the spending of users and automatically rewards them if their total spending exceeds the threshold of 1000 in a given week.
this program includes mint, burn and transfer the currency to the user by using ERC20.

# Feartures

* Minting: The contract owner can mint new tokens and assign them to any specified address.
* Burning: Any user can burn their own rewards.
* Transferring: Users can transfer tokens to other addresses. Standard ERC20 transfer functionality allows users to transfer Loyalty Points to others.
#  Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

# Import Statements

The contract imports from the OpenZeppelin library:
```
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";
```
## Contract Definition
The contract is defined as Reward_user and inherits from ERC20 :
```
contract Mtoken is ERC20 {}
```
### Constructor
The constructor initializes the ERC20 token with a name and symbol:
```
constructor(uint256 tottal_supply) ERC20("Reward_user", "RU") {}
 
    _mint(msg.sender, total_supply);
```


## Burning Tokens

Any user can burn their own tokens.

     function burn(uint256 amount) public {
    _burn(msg.sender, amount);
      }

* amount: The number of tokens to burn.
* The function reduces the total supply of tokens by the specified amount.

## Transferring Tokens

The transfer function allows users to transfer tokens to another address. 

     function transfer(address recipient, uint256 amount) public override returns (bool) {
    _transfer(_msgSender(), recipient, amount);
    return true;
     }

* recipient: The address to receive the tokens.
*  amount: The number of tokens to transfer.
*  The function returns a boolean indicating success.

# Author
Rakshita Thakur 

thakurrakshita067@gmail.com
# License

This project is licensed under the MIT License - see the LICENSE.md file for details
