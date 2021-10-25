=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for CryptoApis::FeaturesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FeaturesApi' do
  before do
    # run before each test
    @api_instance = CryptoApis::FeaturesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FeaturesApi' do
    it 'should create an instance of FeaturesApi' do
      expect(@api_instance).to be_instance_of(CryptoApis::FeaturesApi)
    end
  end

  # unit tests for broadcast_locally_signed_transaction
  # Broadcast Locally Signed Transaction
  # Through this endpoint customers can broadcast transactions that have been already signed locally. Instead of using a node for broadcasting a signed transaction users can use this endpoint. We then keep the user posted about the status by sending you a callback with a success or failure status.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [BroadcastLocallySignedTransactionRB] :broadcast_locally_signed_transaction_rb 
  # @return [BroadcastLocallySignedTransactionR]
  describe 'broadcast_locally_signed_transaction test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for generate_address
  # Generate Address
  # This endpoint will generate a unique address for the user along with the specific transaction script, e.g. P2PKH, a private and a public key, and WIF.     Users **must** keep their private keys and WIFs secure and accessible to only them at all times. Losing those exposes a risk of losing their funds associated with the respective address.     {warning}We generate, but **do not** save or record the response in any data base, log or anywhere else on our side! In the case a user loses their private key or WIF, Crypto APIs 2.0 **will not be able** to retrieve it.{/warning}
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [GenerateAddressRB] :generate_address_rb 
  # @return [GenerateAddressR]
  describe 'generate_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_eip_1559_fee_recommendations
  # Get EIP 1559 Fee Recommendations
  # Through this endpoint customers can obtain fee recommendations specifically for EIP 1559.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @return [GetEIP1559FeeRecommendationsR]
  describe 'get_eip_1559_fee_recommendations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for validate_address
  # Validate Address
  # This endpoint checks user public addresses whether they are valid or not.
  # @param blockchain Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
  # @param network Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [ValidateAddressRB] :validate_address_rb 
  # @return [ValidateAddressR]
  describe 'validate_address test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
