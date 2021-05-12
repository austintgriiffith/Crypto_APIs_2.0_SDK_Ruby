# OpenapiClient::AddressTokensTransactionUnconfirmedEthereumerc20token

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Specifies the name of the token. |  |
| **symbol** | **String** | Specifies an identifier of the token, where up to five alphanumeric characters can be used for it. |  |
| **decimals** | **String** | Defines how many decimals can be used to break the token. | [optional] |
| **amount** | **String** | Defines the amount of tokens sent with the transaction that is pending confirmation. |  |
| **contract_address** | **String** | Defines the address of the contract. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AddressTokensTransactionUnconfirmedEthereumerc20token.new(
  name: Tether USD,
  symbol: USDT,
  decimals: 6,
  amount: 10.5,
  contract_address: 0xdac17f958d2ee523a2206206994597c13d831ec7
)
```
