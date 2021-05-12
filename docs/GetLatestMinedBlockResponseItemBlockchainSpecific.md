# OpenapiClient::GetLatestMinedBlockResponseItemBlockchainSpecific

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::GetLatestMinedBlockResponseItemBlockchainSpecific.openapi_one_of
# =>
# [
#   :'GetLatestMinedBlockResponseItemBlockchainSpecificBitcoin',
#   :'GetLatestMinedBlockResponseItemBlockchainSpecificBitcoinCash',
#   :'GetLatestMinedBlockResponseItemBlockchainSpecificDash',
#   :'GetLatestMinedBlockResponseItemBlockchainSpecificDogecoin',
#   :'GetLatestMinedBlockResponseItemBlockchainSpecificEthereum',
#   :'GetLatestMinedBlockResponseItemBlockchainSpecificEthereumClassic',
#   :'GetLatestMinedBlockResponseItemBlockchainSpecificLitecoin'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'openapi_client'

OpenapiClient::GetLatestMinedBlockResponseItemBlockchainSpecific.build(data)
# => #<GetLatestMinedBlockResponseItemBlockchainSpecificBitcoin:0x00007fdd4aab02a0>

OpenapiClient::GetLatestMinedBlockResponseItemBlockchainSpecific.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `GetLatestMinedBlockResponseItemBlockchainSpecificBitcoin`
- `GetLatestMinedBlockResponseItemBlockchainSpecificBitcoinCash`
- `GetLatestMinedBlockResponseItemBlockchainSpecificDash`
- `GetLatestMinedBlockResponseItemBlockchainSpecificDogecoin`
- `GetLatestMinedBlockResponseItemBlockchainSpecificEthereum`
- `GetLatestMinedBlockResponseItemBlockchainSpecificEthereumClassic`
- `GetLatestMinedBlockResponseItemBlockchainSpecificLitecoin`
- `nil` (if no type matches)
