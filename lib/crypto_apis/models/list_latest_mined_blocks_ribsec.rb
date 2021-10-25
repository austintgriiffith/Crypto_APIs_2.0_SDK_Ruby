=begin
#CryptoAPIs

#Crypto APIs 2.0 is a complex and innovative infrastructure layer that radically simplifies the development of any Blockchain and Crypto related applications. Organized around REST, Crypto APIs 2.0 can assist both novice Bitcoin/Ethereum enthusiasts and crypto experts with the development of their blockchain applications. Crypto APIs 2.0 provides unified endpoints and data, raw data, automatic tokens and coins forwardings, callback functionalities, and much more.

The version of the OpenAPI document: 2.0.0
Contact: developers@cryptoapis.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0-SNAPSHOT

=end

require 'date'
require 'time'

module CryptoApis
  # Ethereum Classic
  class ListLatestMinedBlocksRIBSEC
    # Represents any data that can be included by the miner in the block.
    attr_accessor :extra_data

    # Defines the total gas limit of all transactions in the block.
    attr_accessor :gas_limit

    # Represents the total amount of gas used by all transactions in this block.
    attr_accessor :gas_used

    # Specifies the amount of time required for the block to be mined in seconds.
    attr_accessor :mined_in_seconds

    # Defines the combined hash of all uncles for a given parent.
    attr_accessor :sha3_uncles

    # Defines the total difficulty of the chain until this block, i.e. how difficult it is for a specific miner to mine a new block.
    attr_accessor :total_difficulty

    attr_accessor :uncles

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'extra_data' => :'extraData',
        :'gas_limit' => :'gasLimit',
        :'gas_used' => :'gasUsed',
        :'mined_in_seconds' => :'minedInSeconds',
        :'sha3_uncles' => :'sha3Uncles',
        :'total_difficulty' => :'totalDifficulty',
        :'uncles' => :'uncles'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'extra_data' => :'String',
        :'gas_limit' => :'String',
        :'gas_used' => :'String',
        :'mined_in_seconds' => :'Integer',
        :'sha3_uncles' => :'String',
        :'total_difficulty' => :'String',
        :'uncles' => :'Array<String>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::ListLatestMinedBlocksRIBSEC` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::ListLatestMinedBlocksRIBSEC`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'extra_data')
        self.extra_data = attributes[:'extra_data']
      end

      if attributes.key?(:'gas_limit')
        self.gas_limit = attributes[:'gas_limit']
      end

      if attributes.key?(:'gas_used')
        self.gas_used = attributes[:'gas_used']
      end

      if attributes.key?(:'mined_in_seconds')
        self.mined_in_seconds = attributes[:'mined_in_seconds']
      end

      if attributes.key?(:'sha3_uncles')
        self.sha3_uncles = attributes[:'sha3_uncles']
      end

      if attributes.key?(:'total_difficulty')
        self.total_difficulty = attributes[:'total_difficulty']
      end

      if attributes.key?(:'uncles')
        if (value = attributes[:'uncles']).is_a?(Array)
          self.uncles = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @extra_data.nil?
        invalid_properties.push('invalid value for "extra_data", extra_data cannot be nil.')
      end

      if @gas_limit.nil?
        invalid_properties.push('invalid value for "gas_limit", gas_limit cannot be nil.')
      end

      if @gas_used.nil?
        invalid_properties.push('invalid value for "gas_used", gas_used cannot be nil.')
      end

      if @mined_in_seconds.nil?
        invalid_properties.push('invalid value for "mined_in_seconds", mined_in_seconds cannot be nil.')
      end

      if @sha3_uncles.nil?
        invalid_properties.push('invalid value for "sha3_uncles", sha3_uncles cannot be nil.')
      end

      if @total_difficulty.nil?
        invalid_properties.push('invalid value for "total_difficulty", total_difficulty cannot be nil.')
      end

      if @uncles.nil?
        invalid_properties.push('invalid value for "uncles", uncles cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @extra_data.nil?
      return false if @gas_limit.nil?
      return false if @gas_used.nil?
      return false if @mined_in_seconds.nil?
      return false if @sha3_uncles.nil?
      return false if @total_difficulty.nil?
      return false if @uncles.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          extra_data == o.extra_data &&
          gas_limit == o.gas_limit &&
          gas_used == o.gas_used &&
          mined_in_seconds == o.mined_in_seconds &&
          sha3_uncles == o.sha3_uncles &&
          total_difficulty == o.total_difficulty &&
          uncles == o.uncles
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [extra_data, gas_limit, gas_used, mined_in_seconds, sha3_uncles, total_difficulty, uncles].hash
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
