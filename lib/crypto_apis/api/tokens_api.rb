=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1-SNAPSHOT

=end

require 'cgi'

module CryptoApis
  class TokensApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get Token Details by Contract Address
    # Though this endpoint customers can obtain information about token details. This can be done by providing the `contact address` parameter.    {note}This address is **not** the same as the smart contract creator address.{/note}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param contract_address [String] Defines the specific address of the contract.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [GetTokenDetailsByContractAddressR]
    def get_token_details_by_contract_address(blockchain, network, contract_address, opts = {})
      data, _status_code, _headers = get_token_details_by_contract_address_with_http_info(blockchain, network, contract_address, opts)
      data
    end

    # Get Token Details by Contract Address
    # Though this endpoint customers can obtain information about token details. This can be done by providing the &#x60;contact address&#x60; parameter.    {note}This address is **not** the same as the smart contract creator address.{/note}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param contract_address [String] Defines the specific address of the contract.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [Array<(GetTokenDetailsByContractAddressR, Integer, Hash)>] GetTokenDetailsByContractAddressR data, response status code and response headers
    def get_token_details_by_contract_address_with_http_info(blockchain, network, contract_address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.get_token_details_by_contract_address ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling TokensApi.get_token_details_by_contract_address"
      end
      # verify enum value
      allowable_values = ["ethereum", "ethereum-classic", "binance-smart-chain"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling TokensApi.get_token_details_by_contract_address"
      end
      # verify enum value
      allowable_values = ["mainnet", "ropsten", "mordor", "testnet"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'contract_address' is set
      if @api_client.config.client_side_validation && contract_address.nil?
        fail ArgumentError, "Missing the required parameter 'contract_address' when calling TokensApi.get_token_details_by_contract_address"
      end
      # resource path
      local_var_path = '/blockchain-data/{blockchain}/{network}/addresses/{contractAddress}/contract'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'contractAddress' + '}', CGI.escape(contract_address.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetTokenDetailsByContractAddressR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TokensApi.get_token_details_by_contract_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#get_token_details_by_contract_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Confirmed Tokens Transfers By Address
    # Through this endpoint customers can obtain a list with **confirmed** token transfers by the `address` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **confirmed tokens** not coins.{/note}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param address [String] Represents the public address, which is a compressed and shortened form of a public key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [ListConfirmedTokensTransfersByAddressR]
    def list_confirmed_tokens_transfers_by_address(blockchain, network, address, opts = {})
      data, _status_code, _headers = list_confirmed_tokens_transfers_by_address_with_http_info(blockchain, network, address, opts)
      data
    end

    # List Confirmed Tokens Transfers By Address
    # Through this endpoint customers can obtain a list with **confirmed** token transfers by the &#x60;address&#x60; attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **confirmed tokens** not coins.{/note}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param address [String] Represents the public address, which is a compressed and shortened form of a public key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [Array<(ListConfirmedTokensTransfersByAddressR, Integer, Hash)>] ListConfirmedTokensTransfersByAddressR data, response status code and response headers
    def list_confirmed_tokens_transfers_by_address_with_http_info(blockchain, network, address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.list_confirmed_tokens_transfers_by_address ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling TokensApi.list_confirmed_tokens_transfers_by_address"
      end
      # verify enum value
      allowable_values = ["ethereum", "ethereum-classic", "binance-smart-chain"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling TokensApi.list_confirmed_tokens_transfers_by_address"
      end
      # verify enum value
      allowable_values = ["mainnet", "ropsten", "mordor", "testnet"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling TokensApi.list_confirmed_tokens_transfers_by_address"
      end
      # resource path
      local_var_path = '/blockchain-data/{blockchain}/{network}/addresses/{address}/tokens-transfers'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'address' + '}', CGI.escape(address.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListConfirmedTokensTransfersByAddressR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TokensApi.list_confirmed_tokens_transfers_by_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#list_confirmed_tokens_transfers_by_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Tokens By Address
    # Through this endpoint customers can obtain token data by providing an attribute - `address`.  The information that can be returned can include the contract address, the token symbol, type and balance.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param address [String] Represents the public address, which is a compressed and shortened form of a public key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [ListTokensByAddressR]
    def list_tokens_by_address(blockchain, network, address, opts = {})
      data, _status_code, _headers = list_tokens_by_address_with_http_info(blockchain, network, address, opts)
      data
    end

    # List Tokens By Address
    # Through this endpoint customers can obtain token data by providing an attribute - &#x60;address&#x60;.  The information that can be returned can include the contract address, the token symbol, type and balance.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param address [String] Represents the public address, which is a compressed and shortened form of a public key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [Array<(ListTokensByAddressR, Integer, Hash)>] ListTokensByAddressR data, response status code and response headers
    def list_tokens_by_address_with_http_info(blockchain, network, address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.list_tokens_by_address ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling TokensApi.list_tokens_by_address"
      end
      # verify enum value
      allowable_values = ["ethereum", "ethereum-classic", "binance-smart-chain"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling TokensApi.list_tokens_by_address"
      end
      # verify enum value
      allowable_values = ["mainnet", "ropsten", "mordor", "testnet"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling TokensApi.list_tokens_by_address"
      end
      # resource path
      local_var_path = '/blockchain-data/{blockchain}/{network}/addresses/{address}/tokens'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'address' + '}', CGI.escape(address.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListTokensByAddressR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TokensApi.list_tokens_by_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#list_tokens_by_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Tokens Transfers By Transaction Hash
    # Through this endpoint customers can obtain a list with token transfers by the `transactionHash` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **tokens** not coins.{/note}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param transaction_hash [String] Represents the hash of the transaction, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [ListTokensTransfersByTransactionHashR]
    def list_tokens_transfers_by_transaction_hash(blockchain, network, transaction_hash, opts = {})
      data, _status_code, _headers = list_tokens_transfers_by_transaction_hash_with_http_info(blockchain, network, transaction_hash, opts)
      data
    end

    # List Tokens Transfers By Transaction Hash
    # Through this endpoint customers can obtain a list with token transfers by the &#x60;transactionHash&#x60; attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **tokens** not coins.{/note}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param transaction_hash [String] Represents the hash of the transaction, which is its unique identifier. It represents a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [Array<(ListTokensTransfersByTransactionHashR, Integer, Hash)>] ListTokensTransfersByTransactionHashR data, response status code and response headers
    def list_tokens_transfers_by_transaction_hash_with_http_info(blockchain, network, transaction_hash, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.list_tokens_transfers_by_transaction_hash ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling TokensApi.list_tokens_transfers_by_transaction_hash"
      end
      # verify enum value
      allowable_values = ["ethereum", "ethereum-classic", "binance-smart-chain"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling TokensApi.list_tokens_transfers_by_transaction_hash"
      end
      # verify enum value
      allowable_values = ["mainnet", "ropsten", "mordor", "testnet"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'transaction_hash' is set
      if @api_client.config.client_side_validation && transaction_hash.nil?
        fail ArgumentError, "Missing the required parameter 'transaction_hash' when calling TokensApi.list_tokens_transfers_by_transaction_hash"
      end
      # resource path
      local_var_path = '/blockchain-data/{blockchain}/{network}/transactions/{transactionHash}/tokens-transfers'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'transactionHash' + '}', CGI.escape(transaction_hash.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListTokensTransfersByTransactionHashR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TokensApi.list_tokens_transfers_by_transaction_hash",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#list_tokens_transfers_by_transaction_hash\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Unconfirmed Tokens Transfers By Address
    # Through this endpoint customers can obtain a list with **unconfirmed** token transfers by the `address` attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **unconfirmed tokens** not coins.{/note}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param address [String] Represents the public address, which is a compressed and shortened form of a public key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [ListUnconfirmedTokensTransfersByAddressR]
    def list_unconfirmed_tokens_transfers_by_address(blockchain, network, address, opts = {})
      data, _status_code, _headers = list_unconfirmed_tokens_transfers_by_address_with_http_info(blockchain, network, address, opts)
      data
    end

    # List Unconfirmed Tokens Transfers By Address
    # Through this endpoint customers can obtain a list with **unconfirmed** token transfers by the &#x60;address&#x60; attribute. Token transfers may include information such as addresses of the sender and recipient, token name, token symbol, etc.    {note}This refers only to transfers done for **unconfirmed tokens** not coins.{/note}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Ethereum Classic, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param address [String] Represents the public address, which is a compressed and shortened form of a public key.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [Array<(ListUnconfirmedTokensTransfersByAddressR, Integer, Hash)>] ListUnconfirmedTokensTransfersByAddressR data, response status code and response headers
    def list_unconfirmed_tokens_transfers_by_address_with_http_info(blockchain, network, address, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokensApi.list_unconfirmed_tokens_transfers_by_address ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling TokensApi.list_unconfirmed_tokens_transfers_by_address"
      end
      # verify enum value
      allowable_values = ["ethereum", "ethereum-classic"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling TokensApi.list_unconfirmed_tokens_transfers_by_address"
      end
      # verify enum value
      allowable_values = ["ropsten", "mainnet", "mordor"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'address' is set
      if @api_client.config.client_side_validation && address.nil?
        fail ArgumentError, "Missing the required parameter 'address' when calling TokensApi.list_unconfirmed_tokens_transfers_by_address"
      end
      # resource path
      local_var_path = '/blockchain-data/{blockchain}/{network}/addresses/{address}/tokens-transfers-unconfirmed'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'address' + '}', CGI.escape(address.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListUnconfirmedTokensTransfersByAddressR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"TokensApi.list_unconfirmed_tokens_transfers_by_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TokensApi#list_unconfirmed_tokens_transfers_by_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
