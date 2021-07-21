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
require 'date'

# Unit tests for CryptoApis::CreateCoinsTransactionRequestFromWalletRI
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe CryptoApis::CreateCoinsTransactionRequestFromWalletRI do
  let(:instance) { CryptoApis::CreateCoinsTransactionRequestFromWalletRI.new }

  describe 'test an instance of CreateCoinsTransactionRequestFromWalletRI' do
    it 'should create an instance of CreateCoinsTransactionRequestFromWalletRI' do
      expect(instance).to be_instance_of(CryptoApis::CreateCoinsTransactionRequestFromWalletRI)
    end
  end
  describe 'test attribute "fee_priority"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["slow", "standard", "fast"])
      # validator.allowable_values.each do |value|
      #   expect { instance.fee_priority = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "recipients"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total_transaction_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "transaction_request_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["created", "await-approval", "pending", "prepared", "signed", "broadcasted", "success", "failed", "rejected", "mined"])
      # validator.allowable_values.each do |value|
      #   expect { instance.transaction_request_status = value }.not_to raise_error
      # end
    end
  end

end
