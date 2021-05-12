# OpenapiClient::ListTransactionsByBlockHashResponseItemRecipients

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one recipient. |  |
| **amount** | **String** | Represents the amount received to this address. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByBlockHashResponseItemRecipients.new(
  address: mvuvhgT5DUjpQ2LBWQhujiFGDZiDHGdHa7,
  amount: 0.00476076
)
```
