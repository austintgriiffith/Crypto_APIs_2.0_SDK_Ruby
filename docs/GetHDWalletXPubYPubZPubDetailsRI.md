# CryptoApis::GetHDWalletXPubYPubZPubDetailsRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **confirmed_balance** | **String** | Specifies the confirmed coins balance of the Wallet. |  |
| **total_received** | **String** | Defines the total currency received to the Wallet. | [optional] |
| **total_spent** | **String** | Defines the total currency spent from the Wallet. | [optional] |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetHDWalletXPubYPubZPubDetailsRI.new(
  confirmed_balance: 0.0021,
  total_received: 0.0002,
  total_spent: 0.0001
)
```

