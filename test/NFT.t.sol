// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/NFT.sol";

contract NFTTest is Test {
    NFT public nft;
    string public NAME = "AI Generated NFT";
    string public SYMBOL = "AINFT";
    uint256 public COST = 0.001 ether;

    function setUp() public {
        nft = new NFT(NAME, SYMBOL, COST);
    }
}
