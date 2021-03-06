# CryptoApis::ListWalletTransactionsRIFungibleTokensInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Defines the amount of the fungible tokens. |  |
| **converted_amount** | **String** | Defines the tokens&#39; converted amount value. |  |
| **exchange_rate_unit** | **String** | Represents token&#39;s exchange rate unit. |  |
| **name** | **String** | Defines the token&#39;s name as a string. |  |
| **recipient** | **String** | The address which receives this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one |  |
| **sender** | **String** | Represents the address which sends this transaction. In UTXO-based protocols like Bitcoin there could be several senders while in account-based protocols like Ethereum there is always only one sender. |  |
| **symbol** | **String** | Defines the symbol of the fungible tokens. |  |
| **token_decimals** | **Integer** | Defines the decimals of the token, i.e. the number of digits that come after the decimal coma of the token. |  |
| **type** | **String** | Defines the specific token type. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListWalletTransactionsRIFungibleTokensInner.new(
  amount: 0.254,
  converted_amount: 0.0034,
  exchange_rate_unit: USD,
  name: Tether USD,
  recipient: 2MzakdGTEp8SMWEHKwKM4HYv6uNCBXtHpkV,
  sender: 2N5PcdirZUzKF9bWuGdugNuzcQrCbBudxv1,
  symbol: BTC,
  token_decimals: 6,
  type: ERC-20
)
```

