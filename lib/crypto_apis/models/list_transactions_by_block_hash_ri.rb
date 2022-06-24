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
  class ListTransactionsByBlockHashRI
    # Represents the index position of the transaction in the specific block.
    attr_accessor :index

    # Represents the hash of the block where this transaction was mined/confirmed for first time. The hash is defined as a cryptographic digital fingerprint made by hashing the block header twice through the SHA256 algorithm.
    attr_accessor :mined_in_block_hash

    # Represents the hight of the block where this transaction was mined/confirmed for first time. The height is defined as the number of blocks in the blockchain preceding this specific block.
    attr_accessor :mined_in_block_height

    # Represents a list of recipient addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list.
    attr_accessor :recipients

    # Represents a list of sender addresses with the respective amounts. In account-based protocols like Ethereum there is only one address in this list.
    attr_accessor :senders

    # Defines the exact date/time in Unix Timestamp when this transaction was mined, confirmed or first seen in Mempool, if it is unconfirmed.
    attr_accessor :timestamp

    # Represents the same as `transactionId` for account-based protocols like Ethereum, while it could be different in UTXO-based protocols like Bitcoin. E.g., in UTXO-based protocols `hash` is different from `transactionId` for SegWit transactions.
    attr_accessor :transaction_hash

    # Represents the unique identifier of a transaction, i.e. it could be `transactionId` in UTXO-based protocols like Bitcoin, and transaction `hash` in Ethereum blockchain.
    attr_accessor :transaction_id

    attr_accessor :fee

    attr_accessor :blockchain_specific

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'index' => :'index',
        :'mined_in_block_hash' => :'minedInBlockHash',
        :'mined_in_block_height' => :'minedInBlockHeight',
        :'recipients' => :'recipients',
        :'senders' => :'senders',
        :'timestamp' => :'timestamp',
        :'transaction_hash' => :'transactionHash',
        :'transaction_id' => :'transactionId',
        :'fee' => :'fee',
        :'blockchain_specific' => :'blockchainSpecific'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'index' => :'Integer',
        :'mined_in_block_hash' => :'String',
        :'mined_in_block_height' => :'Integer',
        :'recipients' => :'Array<ListTransactionsByBlockHashRIRecipientsInner>',
        :'senders' => :'Array<ListTransactionsByBlockHashRISendersInner>',
        :'timestamp' => :'Integer',
        :'transaction_hash' => :'String',
        :'transaction_id' => :'String',
        :'fee' => :'ListTransactionsByBlockHashRIFee',
        :'blockchain_specific' => :'ListTransactionsByBlockHashRIBS'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::ListTransactionsByBlockHashRI` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::ListTransactionsByBlockHashRI`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'index')
        self.index = attributes[:'index']
      end

      if attributes.key?(:'mined_in_block_hash')
        self.mined_in_block_hash = attributes[:'mined_in_block_hash']
      end

      if attributes.key?(:'mined_in_block_height')
        self.mined_in_block_height = attributes[:'mined_in_block_height']
      end

      if attributes.key?(:'recipients')
        if (value = attributes[:'recipients']).is_a?(Array)
          self.recipients = value
        end
      end

      if attributes.key?(:'senders')
        if (value = attributes[:'senders']).is_a?(Array)
          self.senders = value
        end
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'transaction_hash')
        self.transaction_hash = attributes[:'transaction_hash']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'blockchain_specific')
        self.blockchain_specific = attributes[:'blockchain_specific']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @index.nil?
        invalid_properties.push('invalid value for "index", index cannot be nil.')
      end

      if @mined_in_block_hash.nil?
        invalid_properties.push('invalid value for "mined_in_block_hash", mined_in_block_hash cannot be nil.')
      end

      if @mined_in_block_height.nil?
        invalid_properties.push('invalid value for "mined_in_block_height", mined_in_block_height cannot be nil.')
      end

      if @recipients.nil?
        invalid_properties.push('invalid value for "recipients", recipients cannot be nil.')
      end

      if @senders.nil?
        invalid_properties.push('invalid value for "senders", senders cannot be nil.')
      end

      if @timestamp.nil?
        invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
      end

      if @transaction_hash.nil?
        invalid_properties.push('invalid value for "transaction_hash", transaction_hash cannot be nil.')
      end

      if @transaction_id.nil?
        invalid_properties.push('invalid value for "transaction_id", transaction_id cannot be nil.')
      end

      if @fee.nil?
        invalid_properties.push('invalid value for "fee", fee cannot be nil.')
      end

      if @blockchain_specific.nil?
        invalid_properties.push('invalid value for "blockchain_specific", blockchain_specific cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @index.nil?
      return false if @mined_in_block_hash.nil?
      return false if @mined_in_block_height.nil?
      return false if @recipients.nil?
      return false if @senders.nil?
      return false if @timestamp.nil?
      return false if @transaction_hash.nil?
      return false if @transaction_id.nil?
      return false if @fee.nil?
      return false if @blockchain_specific.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          index == o.index &&
          mined_in_block_hash == o.mined_in_block_hash &&
          mined_in_block_height == o.mined_in_block_height &&
          recipients == o.recipients &&
          senders == o.senders &&
          timestamp == o.timestamp &&
          transaction_hash == o.transaction_hash &&
          transaction_id == o.transaction_id &&
          fee == o.fee &&
          blockchain_specific == o.blockchain_specific
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [index, mined_in_block_hash, mined_in_block_height, recipients, senders, timestamp, transaction_hash, transaction_id, fee, blockchain_specific].hash
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
