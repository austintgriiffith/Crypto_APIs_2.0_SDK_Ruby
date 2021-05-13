# CryptoApis::ListTransactionsByBlockHashRIBSL

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **version** | **Integer** | Represents transaction version number. |  |
| **vin** | [**Array&lt;ListTransactionsByBlockHashRIBSLVin&gt;**](ListTransactionsByBlockHashRIBSLVin.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListTransactionsByBlockHashRIBSLVout&gt;**](ListTransactionsByBlockHashRIBSLVout.md) | Represents the transaction outputs. |  |
| **vsize** | **Integer** | Represents the virtual size of this transaction. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListTransactionsByBlockHashRIBSL.new(
  locktime: 2,
  size: 223,
  version: 2,
  vin: null,
  vout: null,
  vsize: 141
)
```
