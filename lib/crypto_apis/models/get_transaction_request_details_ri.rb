=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.1-SNAPSHOT

=end

require 'date'
require 'time'

module CryptoApis
  class GetTransactionRequestDetailsRI
    # Defines an optional note for additional details.
    attr_accessor :additional_details

    # Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    attr_accessor :blockchain

    # Defines the priority for the fee, if it is \"slow\", \"standard\" or \"fast\".
    attr_accessor :fee_priority

    # Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\" are test networks.
    attr_accessor :network

    # Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list.
    attr_accessor :recipients

    # Defines the total transaction amount.
    attr_accessor :total_transaction_amount

    # Represents the unique identifier of a transaction, i.e. it could be transactionId in UTXO-based protocols like Bitcoin, and transaction hash in Ethereum blockchain.
    attr_accessor :transaction_id

    # Defines the status of the transaction request, e.g. pending.
    attr_accessor :transaction_request_status

    # Defines the transaction type, if it is for coins or tokens.
    attr_accessor :transaction_type

    # Defines the unit of the amount.
    attr_accessor :unit

    # Defines the unique ID of the Wallet.
    attr_accessor :wallet_id

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'additional_details' => :'additionalDetails',
        :'blockchain' => :'blockchain',
        :'fee_priority' => :'feePriority',
        :'network' => :'network',
        :'recipients' => :'recipients',
        :'total_transaction_amount' => :'totalTransactionAmount',
        :'transaction_id' => :'transactionId',
        :'transaction_request_status' => :'transactionRequestStatus',
        :'transaction_type' => :'transactionType',
        :'unit' => :'unit',
        :'wallet_id' => :'walletId'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'additional_details' => :'String',
        :'blockchain' => :'String',
        :'fee_priority' => :'String',
        :'network' => :'String',
        :'recipients' => :'Array<GetTransactionRequestDetailsRIRecipientsInner>',
        :'total_transaction_amount' => :'String',
        :'transaction_id' => :'String',
        :'transaction_request_status' => :'String',
        :'transaction_type' => :'String',
        :'unit' => :'String',
        :'wallet_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::GetTransactionRequestDetailsRI` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::GetTransactionRequestDetailsRI`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'additional_details')
        self.additional_details = attributes[:'additional_details']
      end

      if attributes.key?(:'blockchain')
        self.blockchain = attributes[:'blockchain']
      end

      if attributes.key?(:'fee_priority')
        self.fee_priority = attributes[:'fee_priority']
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.key?(:'recipients')
        if (value = attributes[:'recipients']).is_a?(Array)
          self.recipients = value
        end
      end

      if attributes.key?(:'total_transaction_amount')
        self.total_transaction_amount = attributes[:'total_transaction_amount']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'transaction_request_status')
        self.transaction_request_status = attributes[:'transaction_request_status']
      end

      if attributes.key?(:'transaction_type')
        self.transaction_type = attributes[:'transaction_type']
      end

      if attributes.key?(:'unit')
        self.unit = attributes[:'unit']
      end

      if attributes.key?(:'wallet_id')
        self.wallet_id = attributes[:'wallet_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @additional_details.nil?
        invalid_properties.push('invalid value for "additional_details", additional_details cannot be nil.')
      end

      if @blockchain.nil?
        invalid_properties.push('invalid value for "blockchain", blockchain cannot be nil.')
      end

      if @fee_priority.nil?
        invalid_properties.push('invalid value for "fee_priority", fee_priority cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @recipients.nil?
        invalid_properties.push('invalid value for "recipients", recipients cannot be nil.')
      end

      if @total_transaction_amount.nil?
        invalid_properties.push('invalid value for "total_transaction_amount", total_transaction_amount cannot be nil.')
      end

      if @transaction_request_status.nil?
        invalid_properties.push('invalid value for "transaction_request_status", transaction_request_status cannot be nil.')
      end

      if @transaction_type.nil?
        invalid_properties.push('invalid value for "transaction_type", transaction_type cannot be nil.')
      end

      if @unit.nil?
        invalid_properties.push('invalid value for "unit", unit cannot be nil.')
      end

      if @wallet_id.nil?
        invalid_properties.push('invalid value for "wallet_id", wallet_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @additional_details.nil?
      return false if @blockchain.nil?
      blockchain_validator = EnumAttributeValidator.new('String', ["bitcoin", "bitcoin-cash", "litecoin", "dogecoin", "dash", "ethereum", "ethereum-classic", "xrp", "zcash"])
      return false unless blockchain_validator.valid?(@blockchain)
      return false if @fee_priority.nil?
      fee_priority_validator = EnumAttributeValidator.new('String', ["slow", "standard", "fast"])
      return false unless fee_priority_validator.valid?(@fee_priority)
      return false if @network.nil?
      network_validator = EnumAttributeValidator.new('String', ["mainnet", "testnet", "ropsten", "mordor"])
      return false unless network_validator.valid?(@network)
      return false if @recipients.nil?
      return false if @total_transaction_amount.nil?
      return false if @transaction_request_status.nil?
      transaction_request_status_validator = EnumAttributeValidator.new('String', ["created", "await-approval", "pending", "prepared", "signed", "broadcasted", "success", "failed", "rejected", "mined"])
      return false unless transaction_request_status_validator.valid?(@transaction_request_status)
      return false if @transaction_type.nil?
      transaction_type_validator = EnumAttributeValidator.new('String', ["coin", "token"])
      return false unless transaction_type_validator.valid?(@transaction_type)
      return false if @unit.nil?
      return false if @wallet_id.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blockchain Object to be assigned
    def blockchain=(blockchain)
      validator = EnumAttributeValidator.new('String', ["bitcoin", "bitcoin-cash", "litecoin", "dogecoin", "dash", "ethereum", "ethereum-classic", "xrp", "zcash"])
      unless validator.valid?(blockchain)
        fail ArgumentError, "invalid value for \"blockchain\", must be one of #{validator.allowable_values}."
      end
      @blockchain = blockchain
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fee_priority Object to be assigned
    def fee_priority=(fee_priority)
      validator = EnumAttributeValidator.new('String', ["slow", "standard", "fast"])
      unless validator.valid?(fee_priority)
        fail ArgumentError, "invalid value for \"fee_priority\", must be one of #{validator.allowable_values}."
      end
      @fee_priority = fee_priority
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(network)
      validator = EnumAttributeValidator.new('String', ["mainnet", "testnet", "ropsten", "mordor"])
      unless validator.valid?(network)
        fail ArgumentError, "invalid value for \"network\", must be one of #{validator.allowable_values}."
      end
      @network = network
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_request_status Object to be assigned
    def transaction_request_status=(transaction_request_status)
      validator = EnumAttributeValidator.new('String', ["created", "await-approval", "pending", "prepared", "signed", "broadcasted", "success", "failed", "rejected", "mined"])
      unless validator.valid?(transaction_request_status)
        fail ArgumentError, "invalid value for \"transaction_request_status\", must be one of #{validator.allowable_values}."
      end
      @transaction_request_status = transaction_request_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_type Object to be assigned
    def transaction_type=(transaction_type)
      validator = EnumAttributeValidator.new('String', ["coin", "token"])
      unless validator.valid?(transaction_type)
        fail ArgumentError, "invalid value for \"transaction_type\", must be one of #{validator.allowable_values}."
      end
      @transaction_type = transaction_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          additional_details == o.additional_details &&
          blockchain == o.blockchain &&
          fee_priority == o.fee_priority &&
          network == o.network &&
          recipients == o.recipients &&
          total_transaction_amount == o.total_transaction_amount &&
          transaction_id == o.transaction_id &&
          transaction_request_status == o.transaction_request_status &&
          transaction_type == o.transaction_type &&
          unit == o.unit &&
          wallet_id == o.wallet_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [additional_details, blockchain, fee_priority, network, recipients, total_transaction_amount, transaction_id, transaction_request_status, transaction_type, unit, wallet_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = CryptoApis.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
