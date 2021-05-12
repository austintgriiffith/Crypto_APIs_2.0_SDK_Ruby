# OpenapiClient::GetXRPRippleTransactionDetailsByTransactionIDResponseItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | **String** | Represents additional data that may be needed. |  |
| **index** | **String** | Defines the index of the transaction, i.e. the consecutive place it takes in the blockchain. |  |
| **mined_in_block_hash** | **String** | Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm. |  |
| **mined_in_block_height** | **String** | Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block. |  |
| **offer** | [**GetXRPRippleTransactionDetailsByTransactionIDResponseItemOffer**](GetXRPRippleTransactionDetailsByTransactionIDResponseItemOffer.md) |  |  |
| **receive** | [**GetXRPRippleTransactionDetailsByTransactionIDResponseItemReceive**](GetXRPRippleTransactionDetailsByTransactionIDResponseItemReceive.md) |  |  |
| **recipients** | [**Array&lt;GetXRPRippleTransactionDetailsByTransactionIDResponseItemRecipients&gt;**](GetXRPRippleTransactionDetailsByTransactionIDResponseItemRecipients.md) | Represents an object of addresses that receive the transactions. |  |
| **senders** | [**Array&lt;GetXRPRippleTransactionDetailsByTransactionIDResponseItemSenders&gt;**](GetXRPRippleTransactionDetailsByTransactionIDResponseItemSenders.md) | Represents an object of addresses that provide the funds. |  |
| **sequence** | **Integer** | Defines the transaction input&#39;s sequence as an integer, which is is used when transactions are replaced with newer versions before LockTime. |  |
| **status** | **String** | Defines the status of the transaction. | [optional] |
| **timestamp** | **Integer** | Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed. |  |
| **transaction_hash** | **String** | Represents the same as &#x60;transactionId&#x60; for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols &#x60;hash&#x60; is different from &#x60;transactionId&#x60; for SegWit transactions. |  |
| **type** | **String** | Defines the type of the transaction. |  |
| **fee** | [**GetXRPRippleTransactionDetailsByTransactionIDResponseItemFee**](GetXRPRippleTransactionDetailsByTransactionIDResponseItemFee.md) |  |  |
| **value** | [**GetXRPRippleTransactionDetailsByTransactionIDResponseItemValue**](GetXRPRippleTransactionDetailsByTransactionIDResponseItemValue.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetXRPRippleTransactionDetailsByTransactionIDResponseItem.new(
  additional_data: rPmPErQe4g9725pcNxJpuvKkdqTESTQ6Tu,
  index: 2,
  mined_in_block_hash: 3f7af58d6cf1cd9020fb285d8e3e215131800d5109e42647ffd9b3aeae59df33,
  mined_in_block_height: 15973802,
  offer: null,
  receive: null,
  recipients: null,
  senders: null,
  sequence: 4294967295,
  status: null,
  timestamp: 1582202940,
  transaction_hash: 36a1737481edec87bacc3101dfb752ae2c76f9171e7edebe587e330c1ea77c8d,
  type: Payment,
  fee: null,
  value: null
)
```
