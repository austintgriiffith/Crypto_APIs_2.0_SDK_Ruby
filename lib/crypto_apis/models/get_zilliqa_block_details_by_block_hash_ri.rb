=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1-SNAPSHOT

=end

require 'date'
require 'time'

module CryptoApis
  class GetZilliqaBlockDetailsByBlockHashRI
    # Represents the number of blocks in the blockchain preceding this specific block. Block numbers have no gaps. A blockchain usually starts with block 0 called the \"Genesis block\".
    attr_accessor :block_height

    # Defines how difficult it is for a specific miner to mine the block.
    attr_accessor :difficulty

    # Represents the Directory Service block which contains metadata about the miners who participate in the consensus protocol.
    attr_accessor :ds_block

    # Defines how difficult it is to mine the dsBlocks.
    attr_accessor :ds_difficulty

    # Represents a part of the DS Committee which leads the consensus protocol for the epoch.
    attr_accessor :ds_leader

    # Represents the maximum amount of gas allowed in the block in order to determine how many transactions it can fit.
    attr_accessor :gas_limit

    # Defines how much of the gas for the block has been used.
    attr_accessor :gas_used

    attr_accessor :micro_blocks

    # Defines the hash of the next block from the specific blockchain.
    attr_accessor :next_block_hash

    # Represents the hash of the previous block, also known as the parent block.
    attr_accessor :previous_block_hash

    # Defines the exact date/time when this block was mined in Unix Timestamp.
    attr_accessor :timestamp

    # Represents the total number of all transactions as part of this block.
    attr_accessor :transactions_count

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'block_height' => :'blockHeight',
        :'difficulty' => :'difficulty',
        :'ds_block' => :'dsBlock',
        :'ds_difficulty' => :'dsDifficulty',
        :'ds_leader' => :'dsLeader',
        :'gas_limit' => :'gasLimit',
        :'gas_used' => :'gasUsed',
        :'micro_blocks' => :'microBlocks',
        :'next_block_hash' => :'nextBlockHash',
        :'previous_block_hash' => :'previousBlockHash',
        :'timestamp' => :'timestamp',
        :'transactions_count' => :'transactionsCount'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'block_height' => :'Integer',
        :'difficulty' => :'String',
        :'ds_block' => :'Integer',
        :'ds_difficulty' => :'String',
        :'ds_leader' => :'String',
        :'gas_limit' => :'Integer',
        :'gas_used' => :'Integer',
        :'micro_blocks' => :'Array<String>',
        :'next_block_hash' => :'String',
        :'previous_block_hash' => :'String',
        :'timestamp' => :'Integer',
        :'transactions_count' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::GetZilliqaBlockDetailsByBlockHashRI` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::GetZilliqaBlockDetailsByBlockHashRI`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'block_height')
        self.block_height = attributes[:'block_height']
      end

      if attributes.key?(:'difficulty')
        self.difficulty = attributes[:'difficulty']
      end

      if attributes.key?(:'ds_block')
        self.ds_block = attributes[:'ds_block']
      end

      if attributes.key?(:'ds_difficulty')
        self.ds_difficulty = attributes[:'ds_difficulty']
      end

      if attributes.key?(:'ds_leader')
        self.ds_leader = attributes[:'ds_leader']
      end

      if attributes.key?(:'gas_limit')
        self.gas_limit = attributes[:'gas_limit']
      end

      if attributes.key?(:'gas_used')
        self.gas_used = attributes[:'gas_used']
      end

      if attributes.key?(:'micro_blocks')
        if (value = attributes[:'micro_blocks']).is_a?(Array)
          self.micro_blocks = value
        end
      end

      if attributes.key?(:'next_block_hash')
        self.next_block_hash = attributes[:'next_block_hash']
      end

      if attributes.key?(:'previous_block_hash')
        self.previous_block_hash = attributes[:'previous_block_hash']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'transactions_count')
        self.transactions_count = attributes[:'transactions_count']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @block_height.nil?
        invalid_properties.push('invalid value for "block_height", block_height cannot be nil.')
      end

      if @difficulty.nil?
        invalid_properties.push('invalid value for "difficulty", difficulty cannot be nil.')
      end

      if @ds_block.nil?
        invalid_properties.push('invalid value for "ds_block", ds_block cannot be nil.')
      end

      if @ds_difficulty.nil?
        invalid_properties.push('invalid value for "ds_difficulty", ds_difficulty cannot be nil.')
      end

      if @ds_leader.nil?
        invalid_properties.push('invalid value for "ds_leader", ds_leader cannot be nil.')
      end

      if @gas_limit.nil?
        invalid_properties.push('invalid value for "gas_limit", gas_limit cannot be nil.')
      end

      if @gas_used.nil?
        invalid_properties.push('invalid value for "gas_used", gas_used cannot be nil.')
      end

      if @micro_blocks.nil?
        invalid_properties.push('invalid value for "micro_blocks", micro_blocks cannot be nil.')
      end

      if @next_block_hash.nil?
        invalid_properties.push('invalid value for "next_block_hash", next_block_hash cannot be nil.')
      end

      if @previous_block_hash.nil?
        invalid_properties.push('invalid value for "previous_block_hash", previous_block_hash cannot be nil.')
      end

      if @timestamp.nil?
        invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
      end

      if @transactions_count.nil?
        invalid_properties.push('invalid value for "transactions_count", transactions_count cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @block_height.nil?
      return false if @difficulty.nil?
      return false if @ds_block.nil?
      return false if @ds_difficulty.nil?
      return false if @ds_leader.nil?
      return false if @gas_limit.nil?
      return false if @gas_used.nil?
      return false if @micro_blocks.nil?
      return false if @next_block_hash.nil?
      return false if @previous_block_hash.nil?
      return false if @timestamp.nil?
      return false if @transactions_count.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          block_height == o.block_height &&
          difficulty == o.difficulty &&
          ds_block == o.ds_block &&
          ds_difficulty == o.ds_difficulty &&
          ds_leader == o.ds_leader &&
          gas_limit == o.gas_limit &&
          gas_used == o.gas_used &&
          micro_blocks == o.micro_blocks &&
          next_block_hash == o.next_block_hash &&
          previous_block_hash == o.previous_block_hash &&
          timestamp == o.timestamp &&
          transactions_count == o.transactions_count
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [block_height, difficulty, ds_block, ds_difficulty, ds_leader, gas_limit, gas_used, micro_blocks, next_block_hash, previous_block_hash, timestamp, transactions_count].hash
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