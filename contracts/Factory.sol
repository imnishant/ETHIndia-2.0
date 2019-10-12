pragma solidity ^0.5.7;
import "./LandCoin.sol";
contract Factory
{
    LandCoin[] private childLandCoin;
    
    function createChildLandCoin(string memory _ownerName, string memory _id, string memory _assetType, uint8 _area, uint _noOfTokens, uint256 _totalPrice) public returns(LandCoin lc)
    {
        LandCoin newChildLandCoin = new LandCoin(_ownerName, _id, _assetType, _area, _noOfTokens, address(this), _totalPrice);
        childLandCoin.push(newChildLandCoin);
        return newChildLandCoin;
    }
    
    function getChildLandCoin() public view returns(LandCoin[] memory)
    {
        return childLandCoin;
    }
}
