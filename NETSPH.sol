// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title Netsphere Token (NETSPH)
/// @notice Fixed Supply ERC20 token deployed on Polygon PoS
/// @dev Total Supply = 300,000,000 NETSPH (no minting allowed)
contract NETSPH is ERC20, Ownable {
    uint256 private constant _initialSupply = 300_000_000 * 10 ** 18;

    constructor() ERC20("Netsphere Token", "NETSPH") Ownable(msg.sender) {
        _mint(msg.sender, _initialSupply);
    }
}
