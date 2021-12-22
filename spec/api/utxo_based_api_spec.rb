=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for CryptoApis::UTXOBasedApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UTXOBasedApi' do
  before do
    # run before each test
    @api_instance = CryptoApis::UTXOBasedApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UTXOBasedApi' do
    it 'should create an instance of UTXOBasedApi' do
      expect(@api_instance).to be_instance_of(CryptoApis::UTXOBasedApi)
    end
  end

  # unit tests for list_unspent_transaction_outputs_by_address
  # List Unspent Transaction Outputs By Address
  # Through this endpoint customers can list their transactions&#39; unspent outputs by &#x60;address&#x60;.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param address Represents the public address, which is a compressed and shortened form of a public key.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListUnspentTransactionOutputsByAddressR]
  describe 'list_unspent_transaction_outputs_by_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
