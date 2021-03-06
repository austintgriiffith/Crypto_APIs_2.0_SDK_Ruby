# CryptoApis::GetTransactionDetailsByTransactionIDRIBSB

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the time at which a particular transaction can be added to the blockchain. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **v_size** | **Integer** | Represents the virtual size of this transaction. |  |
| **version** | **Integer** | Represents the transaction version number. |  |
| **vin** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSBVinInner&gt;**](GetTransactionDetailsByTransactionIDRIBSBVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;GetTransactionDetailsByTransactionIDRIBSBVoutInner&gt;**](GetTransactionDetailsByTransactionIDRIBSBVoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::GetTransactionDetailsByTransactionIDRIBSB.new(
  locktime: 1781965,
  size: 248,
  v_size: 166,
  version: 1,
  vin: null,
  vout: null
)
```

