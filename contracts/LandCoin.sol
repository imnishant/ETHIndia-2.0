pragma solidity ^0.5.7;
import "./ERC20.sol";

contract LandCoin is ERC20
{
    
    string public id;
    string public ownerName;
    address public ownerAddress;
    uint8 public area;
    string public assetType;
    
    constructor(string memory _ownerName, string memory _id, string memory _assetType, uint8 _area, uint _noOfTokens, address _parentAddress,uint256 _totalPrice) public
    { // Set the constructor to the same name as the contract name
        ownerName = _ownerName; // set the token name here
        id = _id; // set the Symbol here
        assetType = _assetType;
        area = _area;
        setTotalSupply(_noOfTokens);
        totalPrice = _totalPrice.div(_noOfTokens);
        ownerAddress =  0xac7FA16Bdcb3E31904394E4F03c77a9572E1bFfa;    // Add the address that you will distribute tokens from here
        _balances[id][0xac7FA16Bdcb3E31904394E4F03c77a9572E1bFfa] = _noOfTokens;
        _owner = 0xac7FA16Bdcb3E31904394E4F03c77a9572E1bFfa;
    }
}