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
  class ListTransactionsByBlockHashRIBSZVJoinSplit
    # Defines a Merkle tree root of a note commitment tree which uniquely identifies a note commitment tree state given the assumed security properties of the Merkle tree’s  hash function.
    attr_accessor :anchor

    attr_accessor :cipher_texts

    attr_accessor :commitments

    attr_accessor :macs

    attr_accessor :nullifiers

    # Defines the one time public key.
    attr_accessor :one_time_pub_key

    # Defines the proof.
    attr_accessor :proof

    # Represents a 256-bit seed that must be chosen independently at random for each JoinSplit description.
    attr_accessor :random_seed

    # Defines the value that the joinSplit transfer will insert into the transparent transaction value pool.
    attr_accessor :v_pub_new

    # Defines the value that the joinSplit transfer will remove from the transparent transaction value pool.
    attr_accessor :v_pub_old

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'anchor' => :'anchor',
        :'cipher_texts' => :'cipherTexts',
        :'commitments' => :'commitments',
        :'macs' => :'macs',
        :'nullifiers' => :'nullifiers',
        :'one_time_pub_key' => :'oneTimePubKey',
        :'proof' => :'proof',
        :'random_seed' => :'randomSeed',
        :'v_pub_new' => :'vPubNew',
        :'v_pub_old' => :'vPubOld'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'anchor' => :'String',
        :'cipher_texts' => :'Array<String>',
        :'commitments' => :'Array<String>',
        :'macs' => :'Array<String>',
        :'nullifiers' => :'Array<String>',
        :'one_time_pub_key' => :'String',
        :'proof' => :'String',
        :'random_seed' => :'String',
        :'v_pub_new' => :'String',
        :'v_pub_old' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::ListTransactionsByBlockHashRIBSZVJoinSplit` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::ListTransactionsByBlockHashRIBSZVJoinSplit`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'anchor')
        self.anchor = attributes[:'anchor']
      end

      if attributes.key?(:'cipher_texts')
        if (value = attributes[:'cipher_texts']).is_a?(Array)
          self.cipher_texts = value
        end
      end

      if attributes.key?(:'commitments')
        if (value = attributes[:'commitments']).is_a?(Array)
          self.commitments = value
        end
      end

      if attributes.key?(:'macs')
        if (value = attributes[:'macs']).is_a?(Array)
          self.macs = value
        end
      end

      if attributes.key?(:'nullifiers')
        if (value = attributes[:'nullifiers']).is_a?(Array)
          self.nullifiers = value
        end
      end

      if attributes.key?(:'one_time_pub_key')
        self.one_time_pub_key = attributes[:'one_time_pub_key']
      end

      if attributes.key?(:'proof')
        self.proof = attributes[:'proof']
      end

      if attributes.key?(:'random_seed')
        self.random_seed = attributes[:'random_seed']
      end

      if attributes.key?(:'v_pub_new')
        self.v_pub_new = attributes[:'v_pub_new']
      end

      if attributes.key?(:'v_pub_old')
        self.v_pub_old = attributes[:'v_pub_old']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @anchor.nil?
        invalid_properties.push('invalid value for "anchor", anchor cannot be nil.')
      end

      if @cipher_texts.nil?
        invalid_properties.push('invalid value for "cipher_texts", cipher_texts cannot be nil.')
      end

      if @commitments.nil?
        invalid_properties.push('invalid value for "commitments", commitments cannot be nil.')
      end

      if @macs.nil?
        invalid_properties.push('invalid value for "macs", macs cannot be nil.')
      end

      if @nullifiers.nil?
        invalid_properties.push('invalid value for "nullifiers", nullifiers cannot be nil.')
      end

      if @one_time_pub_key.nil?
        invalid_properties.push('invalid value for "one_time_pub_key", one_time_pub_key cannot be nil.')
      end

      if @proof.nil?
        invalid_properties.push('invalid value for "proof", proof cannot be nil.')
      end

      if @random_seed.nil?
        invalid_properties.push('invalid value for "random_seed", random_seed cannot be nil.')
      end

      if @v_pub_new.nil?
        invalid_properties.push('invalid value for "v_pub_new", v_pub_new cannot be nil.')
      end

      if @v_pub_old.nil?
        invalid_properties.push('invalid value for "v_pub_old", v_pub_old cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @anchor.nil?
      return false if @cipher_texts.nil?
      return false if @commitments.nil?
      return false if @macs.nil?
      return false if @nullifiers.nil?
      return false if @one_time_pub_key.nil?
      return false if @proof.nil?
      return false if @random_seed.nil?
      return false if @v_pub_new.nil?
      return false if @v_pub_old.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          anchor == o.anchor &&
          cipher_texts == o.cipher_texts &&
          commitments == o.commitments &&
          macs == o.macs &&
          nullifiers == o.nullifiers &&
          one_time_pub_key == o.one_time_pub_key &&
          proof == o.proof &&
          random_seed == o.random_seed &&
          v_pub_new == o.v_pub_new &&
          v_pub_old == o.v_pub_old
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [anchor, cipher_texts, commitments, macs, nullifiers, one_time_pub_key, proof, random_seed, v_pub_new, v_pub_old].hash
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
