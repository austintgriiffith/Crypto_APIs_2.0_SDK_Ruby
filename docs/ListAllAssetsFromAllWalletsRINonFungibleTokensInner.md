# CryptoApis::ListAllAssetsFromAllWalletsRINonFungibleTokensInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blockchain** | **String** | Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc. |  |
| **identifier** | **String** | Defines the specific token identifier. For Bitcoin-based transactions it should be the propertyId and for Ethereum-based transactions - the contract. |  |
| **network** | **String** | Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks. |  |
| **symbol** | **String** | Defines the symbol of the non-fungible tokens. |  |
| **token_id** | **String** | Represents tokens&#39; unique identifier. |  |
| **type** | **String** | Defines the specific token type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListAllAssetsFromAllWalletsRINonFungibleTokensInner.new(
  blockchain: ethereum,
  identifier: 0x90ca8a3eb2574f937f514749ce619fdcca187d45,
  network: ropsten,
  symbol: ENS,
  token_id: 0x000000000000000000000000000000000000000000000000000000000000195b,
  type: ERC-721
)
```

