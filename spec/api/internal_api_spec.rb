=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for CryptoApis::InternalApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InternalApi' do
  before do
    # run before each test
    @api_instance = CryptoApis::InternalApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InternalApi' do
    it 'should create an instance of InternalApi' do
      expect(@api_instance).to be_instance_of(CryptoApis::InternalApi)
    end
  end

  # unit tests for get_internal_transaction_by_transaction_hash_and_operation_id
  # Get Internal Transaction by Transaction Hash and Operation Id
  # Through this endpoint customers can obtain detailed information about a specific Internal Transaction by using the attributes &#x60;transactionHash&#x60;  (the parent transaction&#39;s Hash) and &#x60;operationId&#x60; (type trace address).    An internal transaction is the result of a smart contract being triggered by an EOA or a subsequent contract call.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks.
  # @param operation_id Represents the unique internal transaction ID in regards to the parent transaction (type trace address).
  # @param transaction_hash String identifier of the parent transaction of the internal transaction represented in CryptoAPIs.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetInternalTransactionByTransactionHashAndOperationIdR]
  describe 'get_internal_transaction_by_transaction_hash_and_operation_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_internal_transaction_details_by_transaction_hash
  # List Internal Transaction Details by Transaction Hash
  # Through this endpoint customers can list internal transactions along with their details by a specific attribute &#x60;transactionHash&#x60;, which is the parent transaction&#39;s Hash.    An internal transaction is the result of a smart contract being triggered by an EOA or a subsequent contract call.    {note}Please note that listing data from the same type will apply pagination on the results.{/note}
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot;, \&quot;rinkeby\&quot; are test networks.
  # @param transaction_hash String identifier of the parent transaction of the internal transaction represented in CryptoAPIs.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListInternalTransactionDetailsByTransactionHashR]
  describe 'list_internal_transaction_details_by_transaction_hash test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
