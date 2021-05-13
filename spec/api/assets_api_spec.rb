=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for CryptoApis::AssetsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AssetsApi' do
  before do
    # run before each test
    @api_instance = CryptoApis::AssetsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AssetsApi' do
    it 'should create an instance of AssetsApi' do
      expect(@api_instance).to be_instance_of(CryptoApis::AssetsApi)
    end
  end

  # unit tests for list_assets_details
  # List Assets Details
  # This endpoint will return details on a requested asset. The asset could be a cryptocurrency or FIAT asset that we support. Each asset has a unique identifier - &#x60;assetId&#x60; and a unique symbol in the form of a string, e.g. \&quot;BTC\&quot;.    The details returned could include information on the latest rate and rate fluctuation of different periods of time - 24 hours, a week, one hour, the encoding of the logo, and more.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
  # @option opts [String] :asset_type Defines the type of the supported asset. This could be either \&quot;crypto\&quot; or \&quot;fiat\&quot;.
  # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
  # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
  # @return [ListAssetsDetailsR]
  describe 'list_assets_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
