# CryptoApis::CreateAutomaticTokensForwardingRBDataItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_secret_key** | **String** | Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs. For more information please see our [Documentation](https://developers.cryptoapis.io/technical-documentation/general-information/callbacks#callback-security). | [optional] |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. |  |
| **confirmations_count** | **String** | Represents the number of confirmations, i.e. the amount of blocks that have been built on top of this block. |  |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;SLOW\&quot;, \&quot;STANDARD\&quot; or \&quot;FAST\&quot;. |  |
| **minimum_transfer_amount** | **String** | Represents the minimum transfer amount of the currency in the &#x60;fromAddress&#x60; that can be allowed for an automatic forwarding. |  |
| **to_address** | **String** | Represents the hash of the address the currency is forwarded to. |  |
| **token_data** | [**CreateAutomaticTokensForwardingRBTokenData**](CreateAutomaticTokensForwardingRBTokenData.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::CreateAutomaticTokensForwardingRBDataItem.new(
  callback_secret_key: yourSecretString,
  callback_url: https://example.com,
  confirmations_count: 3,
  fee_priority: standard,
  minimum_transfer_amount: 0.00002,
  to_address: tb1q54j7qcu7kgsrx87yn0r9zjdvsxrnvxg4qua2z6,
  token_data: null
)
```

