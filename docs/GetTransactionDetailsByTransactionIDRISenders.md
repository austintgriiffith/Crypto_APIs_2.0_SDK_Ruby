# CryptoApis::GetTransactionDetailsByTransactionIDRISenders

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** | Represents the address which sends this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one sender. |  |
| **amount** | **String** | Represents the amount sent by this address. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDRISenders.new(
  address: 2N5PcdirZUzKF9bWuGdugNuzcQrCbBudxv1,
  amount: 0.00873472
)
```
