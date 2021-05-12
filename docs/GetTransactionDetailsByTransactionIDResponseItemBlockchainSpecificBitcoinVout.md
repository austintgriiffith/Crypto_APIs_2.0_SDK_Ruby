# OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinVout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_spent** | **Boolean** | Defines whether the output is spent or not. |  |
| **script_pub_key** | [**GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinScriptPubKey**](GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinScriptPubKey.md) |  |  |
| **value** | **String** | Represents the sent/received amount. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetTransactionDetailsByTransactionIDResponseItemBlockchainSpecificBitcoinVout.new(
  is_spent: true,
  script_pub_key: null,
  value: 0.000144
)
```
