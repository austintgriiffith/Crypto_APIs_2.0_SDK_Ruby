# CryptoApis::ListTokensForwardingAutomationsRITS

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListTokensForwardingAutomationsRITS.openapi_one_of
# =>
# [
#   :'ListTokensForwardingAutomationsRITSBOT',
#   :'ListTokensForwardingAutomationsRITSET'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'crypto_apis'

CryptoApis::ListTokensForwardingAutomationsRITS.build(data)
# => #<ListTokensForwardingAutomationsRITSBOT:0x00007fdd4aab02a0>

CryptoApis::ListTokensForwardingAutomationsRITS.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ListTokensForwardingAutomationsRITSBOT`
- `ListTokensForwardingAutomationsRITSET`
- `nil` (if no type matches)

