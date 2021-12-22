# -*- encoding: utf-8 -*-

=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0-SNAPSHOT

=end

$:.push File.expand_path("../lib", __FILE__)
require "crypto_apis/version"

Gem::Specification.new do |s|
  s.name        = "crypto_apis"
  s.version     = CryptoApis::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["CryptoAPIs Team"]
  s.email       = ["developers@cryptoapis.io"]
  s.homepage    = "https://cryptoapis.io/"
  s.summary     = "Ruby library/SDK for Crypto APIs 2.0"
  s.description = "Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.4"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
