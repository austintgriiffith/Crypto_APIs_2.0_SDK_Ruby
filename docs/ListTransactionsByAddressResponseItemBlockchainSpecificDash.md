# OpenapiClient::ListTransactionsByAddressResponseItemBlockchainSpecificDash

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents the transaction&#39;s version number. |  |
| **vin** | [**Array&lt;ListTransactionsByAddressResponseItemBlockchainSpecificDashVin&gt;**](ListTransactionsByAddressResponseItemBlockchainSpecificDashVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListTransactionsByAddressResponseItemBlockchainSpecificDashVout&gt;**](ListTransactionsByAddressResponseItemBlockchainSpecificDashVout.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTransactionsByAddressResponseItemBlockchainSpecificDash.new(
  locktime: 0,
  size: 196,
  version: 3,
  vin: null,
  vout: null
)
```
