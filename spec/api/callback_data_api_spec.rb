=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for CryptoApis::CallbackDataApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'CallbackDataApi' do
  before do
    # run before each test
    @api_instance = CryptoApis::CallbackDataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CallbackDataApi' do
    it 'should create an instance of CallbackDataApi' do
      expect(@api_instance).to be_instance_of(CryptoApis::CallbackDataApi)
    end
  end

  # unit tests for get_address_details_from_callback
  # Get Address Details From Callback
  # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific address from the Event it takes part in only if the address already exists in the blockchain events subscriptions. It applies only for Events related to that customer.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param address Represents the public address, which is a compressed and shortened form of a public key.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetAddressDetailsFromCallbackR]
  describe 'get_address_details_from_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_block_details_by_block_hash_from_callback
  # Get Block Details By Block Hash From Callback
  # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific block by providing the &#x60;blockHash&#x60; attribute from the Event it takes part in and after making check that the customer in question does have a subscription for this block. It applies only for Events related to that user.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param block_hash Represents the hash of the block, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetBlockDetailsByBlockHashFromCallbackR]
  describe 'get_block_details_by_block_hash_from_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_block_details_by_block_height_from_callback
  # Get Block Details By Block Height From Callback
  # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for the specific Block by providing the &#x60;blockHeight&#x60; attribute from the Event it takes part in. It applies only for Events related to that user.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param block_height Numeric representation of the block height
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetBlockDetailsByBlockHeightFromCallbackR]
  describe 'get_block_details_by_block_height_from_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_transaction_details_by_transaction_id_from_callback
  # Get Transaction Details By Transaction ID From Callback
  # This endpoint creates a shortcut to obtain information from Blockchain data by going through Blockchain Events and a specific Event Subscription. It provides data for a specific transaction from the Event it takes part in by providing the &#x60;transactionId&#x60; attribute. It applies only for Events related to that user.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param transaction_id String identifier of the transaction
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetTransactionDetailsByTransactionIDFromCallbackR]
  describe 'get_transaction_details_by_transaction_id_from_callback test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
