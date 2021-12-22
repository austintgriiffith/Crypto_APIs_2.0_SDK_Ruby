=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0-SNAPSHOT

=end

require 'date'
require 'time'

module CryptoApis
  # Defines an `item` as one result.
  class AddressCoinsTransactionConfirmedEachConfirmationDataItem
    # Represents the specific blockchain protocol name, e.g. Ethereum, Bitcoin, etc.
    attr_accessor :blockchain

    # Represents the name of the blockchain network used; blockchain networks are usually identical as technology and software, but they differ in data, e.g. - \"mainnet\" is the live network with actual data while networks like \"testnet\", \"ropsten\", \"rinkeby\" are test networks.
    attr_accessor :network

    # Defines the specific address to which the transaction has been sent.
    attr_accessor :address

    attr_accessor :mined_in_block

    # Defines the unique ID of the specific transaction, i.e. its identification number.
    attr_accessor :transaction_id

    # Defines the number of currently received confirmations for the transaction.
    attr_accessor :current_confirmations

    # Defines the number of confirmation transactions requested as callbacks, i.e. the system can notify till the n-th confirmation.
    attr_accessor :target_confirmations

    # Defines the amount of coins sent with the confirmed transaction.
    attr_accessor :amount

    # Defines the unit of the transaction, e.g. BTC.
    attr_accessor :unit

    # Defines whether the transaction is \"incoming\" or \"outgoing\".
    attr_accessor :direction

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
        :'blockchain' => :'blockchain',
        :'network' => :'network',
        :'address' => :'address',
        :'mined_in_block' => :'minedInBlock',
        :'transaction_id' => :'transactionId',
        :'current_confirmations' => :'currentConfirmations',
        :'target_confirmations' => :'targetConfirmations',
        :'amount' => :'amount',
        :'unit' => :'unit',
        :'direction' => :'direction'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'blockchain' => :'String',
        :'network' => :'String',
        :'address' => :'String',
        :'mined_in_block' => :'AddressCoinsTransactionConfirmedEachConfirmationDataItemMinedInBlock',
        :'transaction_id' => :'String',
        :'current_confirmations' => :'Integer',
        :'target_confirmations' => :'Integer',
        :'amount' => :'String',
        :'unit' => :'String',
        :'direction' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::AddressCoinsTransactionConfirmedEachConfirmationDataItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::AddressCoinsTransactionConfirmedEachConfirmationDataItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'blockchain')
        self.blockchain = attributes[:'blockchain']
      end

      if attributes.key?(:'network')
        self.network = attributes[:'network']
      end

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'mined_in_block')
        self.mined_in_block = attributes[:'mined_in_block']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'current_confirmations')
        self.current_confirmations = attributes[:'current_confirmations']
      end

      if attributes.key?(:'target_confirmations')
        self.target_confirmations = attributes[:'target_confirmations']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'unit')
        self.unit = attributes[:'unit']
      end

      if attributes.key?(:'direction')
        self.direction = attributes[:'direction']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @blockchain.nil?
        invalid_properties.push('invalid value for "blockchain", blockchain cannot be nil.')
      end

      if @network.nil?
        invalid_properties.push('invalid value for "network", network cannot be nil.')
      end

      if @address.nil?
        invalid_properties.push('invalid value for "address", address cannot be nil.')
      end

      if @mined_in_block.nil?
        invalid_properties.push('invalid value for "mined_in_block", mined_in_block cannot be nil.')
      end

      if @transaction_id.nil?
        invalid_properties.push('invalid value for "transaction_id", transaction_id cannot be nil.')
      end

      if @current_confirmations.nil?
        invalid_properties.push('invalid value for "current_confirmations", current_confirmations cannot be nil.')
      end

      if @target_confirmations.nil?
        invalid_properties.push('invalid value for "target_confirmations", target_confirmations cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @unit.nil?
        invalid_properties.push('invalid value for "unit", unit cannot be nil.')
      end

      if @direction.nil?
        invalid_properties.push('invalid value for "direction", direction cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @blockchain.nil?
      return false if @network.nil?
      return false if @address.nil?
      return false if @mined_in_block.nil?
      return false if @transaction_id.nil?
      return false if @current_confirmations.nil?
      return false if @target_confirmations.nil?
      return false if @amount.nil?
      return false if @unit.nil?
      return false if @direction.nil?
      direction_validator = EnumAttributeValidator.new('String', ["incoming", "outgoing"])
      return false unless direction_validator.valid?(@direction)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] direction Object to be assigned
    def direction=(direction)
      validator = EnumAttributeValidator.new('String', ["incoming", "outgoing"])
      unless validator.valid?(direction)
        fail ArgumentError, "invalid value for \"direction\", must be one of #{validator.allowable_values}."
      end
      @direction = direction
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          blockchain == o.blockchain &&
          network == o.network &&
          address == o.address &&
          mined_in_block == o.mined_in_block &&
          transaction_id == o.transaction_id &&
          current_confirmations == o.current_confirmations &&
          target_confirmations == o.target_confirmations &&
          amount == o.amount &&
          unit == o.unit &&
          direction == o.direction
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [blockchain, network, address, mined_in_block, transaction_id, current_confirmations, target_confirmations, amount, unit, direction].hash
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
