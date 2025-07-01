// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleCryptoKitties is ERC721 {
    constructor() ERC721("SimpleCryptoKitties", "SCK"){

    }

    uint256 public _tokenIdCounter= 1;

    constructor() ERC721("SimpleCryptoKitties", "SCK") {
        _tokenIdCounter = 0;
    }

}


 





