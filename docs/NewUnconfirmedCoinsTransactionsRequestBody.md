# OpenapiClient::NewUnconfirmedCoinsTransactionsRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **context** | **String** | In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user. | [optional] |
| **data** | [**NewUnconfirmedCoinsTransactionsRequestBodyData**](NewUnconfirmedCoinsTransactionsRequestBodyData.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NewUnconfirmedCoinsTransactionsRequestBody.new(
  context: null,
  data: null
)
```
