factABI = [
	{
		"constant": false,
		"inputs": [
			{
				"name": "_ownerName",
				"type": "string"
			},
			{
				"name": "_id",
				"type": "string"
			},
			{
				"name": "_assetType",
				"type": "string"
			},
			{
				"name": "_area",
				"type": "uint8"
			},
			{
				"name": "_noOfTokens",
				"type": "uint256"
			}
		],
		"name": "createChildLandCoin",
		"outputs": [],
		"payable": false,
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"constant": true,
		"inputs": [],
		"name": "getChildLandCoin",
		"outputs": [
			{
				"name": "",
				"type": "address[]"
			}
		],
		"payable": false,
		"stateMutability": "view",
		"type": "function"
	}
]