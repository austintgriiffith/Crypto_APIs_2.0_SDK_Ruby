# CryptoApis::AddTokensToExistingFromAddressRI

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **callback_url** | **String** | Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs. &#x60;We support ONLY httpS type of protocol&#x60;. |  |
| **confirmations_count** | **Integer** | Represents the number of confirmations, i.e. the amount of blocks that have been built on top of this block. |  |
| **created_timestamp** | **Integer** | Defines the specific time/date when the automatic forwarding was created in Unix Timestamp. |  |
| **fee_address** | **String** | Represents the specific fee address, which is always automatically generated. Users must fund it. |  |
| **fee_priority** | **String** | Represents the fee priority of the automation, whether it is \&quot;SLOW\&quot;, \&quot;STANDARD\&quot; or \&quot;FAST\&quot;. |  |
| **from_address** | **String** | Represents the hash of the address that forwards the tokens. |  |
| **minimum_transfer_amount** | **String** | Represents the minimum transfer amount of the tokens in the &#x60;fromAddress&#x60; that can be allowed for an automatic forwarding. |  |
| **reference_id** | **String** | Represents a unique ID used to reference the specific callback subscription. |  |
| **to_address** | **String** | Represents the hash of the address the tokens are forwarded to. |  |
| **token_data** | [**AddTokensToExistingFromAddressRITS**](AddTokensToExistingFromAddressRITS.md) |  |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::AddTokensToExistingFromAddressRI.new(
  callback_url: https://example.com,
  confirmations_count: 3,
  created_timestamp: 1611238648,
  fee_address: mojjR51gMXLJ4B3SBPhEXXRFDX7U5UWXNQ,
  fee_priority: standard,
  from_address: mizRduUBKEbJ6uzYJUegPh78gEGgM3WjAr,
  minimum_transfer_amount: 0.0001,
  reference_id: 6017dd02a309213863be9e55,
  to_address: mnumE76iEKN47bUsdni85oped5D1fRwKWi,
  token_data: null
)
```

