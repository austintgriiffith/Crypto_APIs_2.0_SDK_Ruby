=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0-SNAPSHOT

=end

require 'cgi'

module CryptoApis
  class AutomaticTokensForwardingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Add Tokens To Existing fromAddress
    # Through this endpoint customers can add **Automatic Tokens forwardings** to an already existing `fromAddress`. Unlike the \"Create Automatic Tokens Forwarding\" endpoint, where the `fromAddress` is generated each time, with this endpoint customers can add an automation from another token to one and the same `fromAddress`.    The `fromAddress` can be used as a deposit address. Any funds received by this address will be automatically forwarded to `toAddress` based on what the customer has set for the automation. The  `toAddress` is essentially the main address and destination for the automatic tokens forwarding.    There is also a `minimumTransferAmount` which only when reached will then trigger the forwarding. Through this the customer can save from fees.    Moreover, `feePriority` can be also set,  which defines how quickly to move the tokens once they are received. The higher priority, the larger the fee will be. It can be \"SLOW\", \"STANDARD\" or \"FAST\".    For this automatic forwarding the customer can set a callback subscription.    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [AddTokensToExistingFromAddressRB] :add_tokens_to_existing_from_address_rb 
    # @return [AddTokensToExistingFromAddressR]
    def add_tokens_to_existing_from_address(blockchain, network, opts = {})
      data, _status_code, _headers = add_tokens_to_existing_from_address_with_http_info(blockchain, network, opts)
      data
    end

    # Add Tokens To Existing fromAddress
    # Through this endpoint customers can add **Automatic Tokens forwardings** to an already existing &#x60;fromAddress&#x60;. Unlike the \&quot;Create Automatic Tokens Forwarding\&quot; endpoint, where the &#x60;fromAddress&#x60; is generated each time, with this endpoint customers can add an automation from another token to one and the same &#x60;fromAddress&#x60;.    The &#x60;fromAddress&#x60; can be used as a deposit address. Any funds received by this address will be automatically forwarded to &#x60;toAddress&#x60; based on what the customer has set for the automation. The  &#x60;toAddress&#x60; is essentially the main address and destination for the automatic tokens forwarding.    There is also a &#x60;minimumTransferAmount&#x60; which only when reached will then trigger the forwarding. Through this the customer can save from fees.    Moreover, &#x60;feePriority&#x60; can be also set,  which defines how quickly to move the tokens once they are received. The higher priority, the larger the fee will be. It can be \&quot;SLOW\&quot;, \&quot;STANDARD\&quot; or \&quot;FAST\&quot;.    For this automatic forwarding the customer can set a callback subscription.    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [AddTokensToExistingFromAddressRB] :add_tokens_to_existing_from_address_rb 
    # @return [Array<(AddTokensToExistingFromAddressR, Integer, Hash)>] AddTokensToExistingFromAddressR data, response status code and response headers
    def add_tokens_to_existing_from_address_with_http_info(blockchain, network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomaticTokensForwardingApi.add_tokens_to_existing_from_address ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling AutomaticTokensForwardingApi.add_tokens_to_existing_from_address"
      end
      # verify enum value
      allowable_values = ["bitcoin", "ethereum"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling AutomaticTokensForwardingApi.add_tokens_to_existing_from_address"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "ropsten"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/blockchain-automations/{blockchain}/{network}/tokens-forwarding/automations/add-token'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'add_tokens_to_existing_from_address_rb'])

      # return_type
      return_type = opts[:debug_return_type] || 'AddTokensToExistingFromAddressR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AutomaticTokensForwardingApi.add_tokens_to_existing_from_address",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomaticTokensForwardingApi#add_tokens_to_existing_from_address\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create Automatic Tokens Forwarding
    # Through this endpoint customers can set up an automatic forwarding function specifically for tokens (**not** coins). They can have a `toAddress` which is essentially the main address and the destination for the automatic tokens forwarding.     There is also a `minimumTransferAmount` which only when reached will then trigger the forwarding. Through this the customer can save from fees.    Moreover, `feePriority` can be also set,  which defines how quickly to move the tokens once they are received. The higher priority, the larger the fee will be. It can be \"SLOW\", \"STANDARD\" or \"FAST\".    The response of this endpoint contains an attribute `fromAddress` which can be used as a deposit address. Any funds received by this address will be automatically forwarded to `toAddress` based on what the customer has set for the automation.    For this automatic forwarding the customer can set a callback subscription.    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}    {note}This endpoint generates a new `fromAddress` each time.{/note}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [CreateAutomaticTokensForwardingRB] :create_automatic_tokens_forwarding_rb 
    # @return [CreateAutomaticTokensForwardingR]
    def create_automatic_tokens_forwarding(blockchain, network, opts = {})
      data, _status_code, _headers = create_automatic_tokens_forwarding_with_http_info(blockchain, network, opts)
      data
    end

    # Create Automatic Tokens Forwarding
    # Through this endpoint customers can set up an automatic forwarding function specifically for tokens (**not** coins). They can have a &#x60;toAddress&#x60; which is essentially the main address and the destination for the automatic tokens forwarding.     There is also a &#x60;minimumTransferAmount&#x60; which only when reached will then trigger the forwarding. Through this the customer can save from fees.    Moreover, &#x60;feePriority&#x60; can be also set,  which defines how quickly to move the tokens once they are received. The higher priority, the larger the fee will be. It can be \&quot;SLOW\&quot;, \&quot;STANDARD\&quot; or \&quot;FAST\&quot;.    The response of this endpoint contains an attribute &#x60;fromAddress&#x60; which can be used as a deposit address. Any funds received by this address will be automatically forwarded to &#x60;toAddress&#x60; based on what the customer has set for the automation.    For this automatic forwarding the customer can set a callback subscription.    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}    {note}This endpoint generates a new &#x60;fromAddress&#x60; each time.{/note}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [CreateAutomaticTokensForwardingRB] :create_automatic_tokens_forwarding_rb 
    # @return [Array<(CreateAutomaticTokensForwardingR, Integer, Hash)>] CreateAutomaticTokensForwardingR data, response status code and response headers
    def create_automatic_tokens_forwarding_with_http_info(blockchain, network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomaticTokensForwardingApi.create_automatic_tokens_forwarding ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling AutomaticTokensForwardingApi.create_automatic_tokens_forwarding"
      end
      # verify enum value
      allowable_values = ["bitcoin", "ethereum"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling AutomaticTokensForwardingApi.create_automatic_tokens_forwarding"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "ropsten"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/blockchain-automations/{blockchain}/{network}/tokens-forwarding/automations'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'context'] = opts[:'context'] if !opts[:'context'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_automatic_tokens_forwarding_rb'])

      # return_type
      return_type = opts[:debug_return_type] || 'CreateAutomaticTokensForwardingR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AutomaticTokensForwardingApi.create_automatic_tokens_forwarding",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomaticTokensForwardingApi#create_automatic_tokens_forwarding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete Automatic Tokens Forwarding
    # Through this endpoint customers can delete a forwarding function they have set for **tokens** (**not** coins).    By setting a `fromAddress` and a `toAddress`, and specifying the amount, tokens can be transferred between addresses.     A `feePriority` will be returned which represents the fee priority of the automation whether it is \"SLOW\", \"STANDARD\" OR \"FAST\".    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param reference_id [String] Represents a unique ID used to reference the specific callback subscription.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [DeleteAutomaticTokensForwardingR]
    def delete_automatic_tokens_forwarding(blockchain, network, reference_id, opts = {})
      data, _status_code, _headers = delete_automatic_tokens_forwarding_with_http_info(blockchain, network, reference_id, opts)
      data
    end

    # Delete Automatic Tokens Forwarding
    # Through this endpoint customers can delete a forwarding function they have set for **tokens** (**not** coins).    By setting a &#x60;fromAddress&#x60; and a &#x60;toAddress&#x60;, and specifying the amount, tokens can be transferred between addresses.     A &#x60;feePriority&#x60; will be returned which represents the fee priority of the automation whether it is \&quot;SLOW\&quot;, \&quot;STANDARD\&quot; OR \&quot;FAST\&quot;.    {warning}The subscription will work for all incoming transactions until it is deleted. There is no need to do that for every transaction.{/warning}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param reference_id [String] Represents a unique ID used to reference the specific callback subscription.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [Array<(DeleteAutomaticTokensForwardingR, Integer, Hash)>] DeleteAutomaticTokensForwardingR data, response status code and response headers
    def delete_automatic_tokens_forwarding_with_http_info(blockchain, network, reference_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomaticTokensForwardingApi.delete_automatic_tokens_forwarding ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling AutomaticTokensForwardingApi.delete_automatic_tokens_forwarding"
      end
      # verify enum value
      allowable_values = ["bitcoin", "ethereum"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling AutomaticTokensForwardingApi.delete_automatic_tokens_forwarding"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "ropsten"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'reference_id' is set
      if @api_client.config.client_side_validation && reference_id.nil?
        fail ArgumentError, "Missing the required parameter 'reference_id' when calling AutomaticTokensForwardingApi.delete_automatic_tokens_forwarding"
      end
      # resource path
      local_var_path = '/blockchain-automations/{blockchain}/{network}/tokens-forwarding/automations/{referenceId}'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s)).sub('{' + 'referenceId' + '}', CGI.escape(reference_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteAutomaticTokensForwardingR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AutomaticTokensForwardingApi.delete_automatic_tokens_forwarding",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomaticTokensForwardingApi#delete_automatic_tokens_forwarding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Fee Address Details
    # Through this endpoint customers can obtain details about a fee address. Only one fee address per currency per network for a user's account can be set no matter how many tokens or subscriptions they have or want to automatically forward.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [GetFeeAddressDetailsR]
    def get_fee_address_details(blockchain, network, opts = {})
      data, _status_code, _headers = get_fee_address_details_with_http_info(blockchain, network, opts)
      data
    end

    # Get Fee Address Details
    # Through this endpoint customers can obtain details about a fee address. Only one fee address per currency per network for a user&#39;s account can be set no matter how many tokens or subscriptions they have or want to automatically forward.
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @return [Array<(GetFeeAddressDetailsR, Integer, Hash)>] GetFeeAddressDetailsR data, response status code and response headers
    def get_fee_address_details_with_http_info(blockchain, network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomaticTokensForwardingApi.get_fee_address_details ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling AutomaticTokensForwardingApi.get_fee_address_details"
      end
      # verify enum value
      allowable_values = ["bitcoin", "ethereum"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling AutomaticTokensForwardingApi.get_fee_address_details"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "ropsten"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/blockchain-automations/{blockchain}/{network}/tokens-forwarding/fee-addresses'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s))

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
      return_type = opts[:debug_return_type] || 'GetFeeAddressDetailsR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AutomaticTokensForwardingApi.get_fee_address_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomaticTokensForwardingApi#get_fee_address_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List Tokens Forwarding Automations
    # Through this endpoint customers can list all of their **tokens** forwarding automations (**not** coins).    Customers can set up automatic forwarding functions for tokens by setting a `fromAddress` and a `toAddress`, and specifying the amount that can be transferred between addresses.     A `feePriority` will be returned which represents the fee priority of the automation whether it is \"SLOW\", \"STANDARD\" OR \"FAST\".     {warning}The subscription will work for all transactions until it is deleted. There is no need to do that for every transaction.{/warning}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis. (default to 50)
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items. (default to 0)
    # @return [ListTokensForwardingAutomationsR]
    def list_tokens_forwarding_automations(blockchain, network, opts = {})
      data, _status_code, _headers = list_tokens_forwarding_automations_with_http_info(blockchain, network, opts)
      data
    end

    # List Tokens Forwarding Automations
    # Through this endpoint customers can list all of their **tokens** forwarding automations (**not** coins).    Customers can set up automatic forwarding functions for tokens by setting a &#x60;fromAddress&#x60; and a &#x60;toAddress&#x60;, and specifying the amount that can be transferred between addresses.     A &#x60;feePriority&#x60; will be returned which represents the fee priority of the automation whether it is \&quot;SLOW\&quot;, \&quot;STANDARD\&quot; OR \&quot;FAST\&quot;.     {warning}The subscription will work for all transactions until it is deleted. There is no need to do that for every transaction.{/warning}
    # @param blockchain [String] Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    # @param network [String] Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \&quot;mainnet\&quot; is the live network with actual data while networks like \&quot;testnet\&quot;, \&quot;ropsten\&quot; are test networks.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :context In batch situations the user can use the context to correlate responses with requests. This property is present regardless of whether the response was successful or returned as an error. &#x60;context&#x60; is specified by the user.
    # @option opts [Integer] :limit Defines how many items should be returned in the response per page basis.
    # @option opts [Integer] :offset The starting index of the response items, i.e. where the response should start listing the returned items.
    # @return [Array<(ListTokensForwardingAutomationsR, Integer, Hash)>] ListTokensForwardingAutomationsR data, response status code and response headers
    def list_tokens_forwarding_automations_with_http_info(blockchain, network, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AutomaticTokensForwardingApi.list_tokens_forwarding_automations ...'
      end
      # verify the required parameter 'blockchain' is set
      if @api_client.config.client_side_validation && blockchain.nil?
        fail ArgumentError, "Missing the required parameter 'blockchain' when calling AutomaticTokensForwardingApi.list_tokens_forwarding_automations"
      end
      # verify enum value
      allowable_values = ["bitcoin", "ethereum"]
      if @api_client.config.client_side_validation && !allowable_values.include?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'network' is set
      if @api_client.config.client_side_validation && network.nil?
        fail ArgumentError, "Missing the required parameter 'network' when calling AutomaticTokensForwardingApi.list_tokens_forwarding_automations"
      end
      # verify enum value
      allowable_values = ["mainnet", "testnet", "ropsten"]
      if @api_client.config.client_side_validation && !allowable_values.include?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/blockchain-automations/{blockchain}/{network}/tokens-forwarding/automations'.sub('{' + 'blockchain' + '}', CGI.escape(blockchain.to_s)).sub('{' + 'network' + '}', CGI.escape(network.to_s))

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
      return_type = opts[:debug_return_type] || 'ListTokensForwardingAutomationsR'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['ApiKey']

      new_options = opts.merge(
        :operation => :"AutomaticTokensForwardingApi.list_tokens_forwarding_automations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AutomaticTokensForwardingApi#list_tokens_forwarding_automations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
