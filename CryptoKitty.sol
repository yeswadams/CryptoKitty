// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract SimpleCryptoKitties is ERC721 {
    uint256 public _tokenIdCounter = 1;

    struct Kitty {
      uint256 genes;
      uint256 birthTime;
      uint256 momId;
      uint256 dadId;
      uint256 generation;
    }

    mapping(uint256 => Kitty) public kitties;

    constructor() ERC721("SimpleCryptoKitties", "SCK") {
      createKittyGen0();
      createKittyGen0();
    }

    function _createKitty(
      uint256 momId,
      uint256 dadId,
      uint256 generation,
      uint256 genes,
      address owner
    ) private returns (uint256) {
      kitties[_tokenIdCounter] = Kitty(
        genes,
        block.timestamp,
        momId,
        dadId,
        generation
      );
      -mint (owner, tokenIdCounter);
      return _tokenIdCounter++;
    }

    function createKittyGen0() private returns (uint256) {
      uint256 genes = uint256(
        keccak256(abi.encodePacked(block.timestamp, _tokenIdCounter))
      );
      return _createKitty(0, 0, 0, genes, msg.sender);
    }
    
 } 
