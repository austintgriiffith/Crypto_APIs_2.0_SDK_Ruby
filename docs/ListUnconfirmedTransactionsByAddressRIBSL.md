# CryptoApis::ListUnconfirmedTransactionsByAddressRIBSL

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **locktime** | **Integer** | Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid. |  |
| **size** | **Integer** | Represents the total size of this transaction. |  |
| **v_size** | **Integer** | Represents the virtual size of this transaction. |  |
| **version** | **Integer** | Represents the transaction&#39;s version number. |  |
| **vin** | [**Array&lt;ListUnconfirmedTransactionsByAddressRIBSLVinInner&gt;**](ListUnconfirmedTransactionsByAddressRIBSLVinInner.md) | Represents the transaction inputs. |  |
| **vout** | [**Array&lt;ListUnconfirmedTransactionsByAddressRIBSLVoutInner&gt;**](ListUnconfirmedTransactionsByAddressRIBSLVoutInner.md) | Represents the transaction outputs. |  |

## Example

```ruby
require 'crypto_apis'

instance = CryptoApis::ListUnconfirmedTransactionsByAddressRIBSL.new(
  locktime: 2,
  size: 223,
  v_size: 141,
  version: 2,
  vin: null,
  vout: null
)
```

