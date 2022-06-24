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
  class ListTransactionsByBlockHeightRIBSZVShieldedOutputInner
    # Represents the 𝑢-coordinate of the note commitment for the output note.
    attr_accessor :cmu

    # Defines a value commitment to the value of the input note.
    attr_accessor :cv

    # Represents a ciphertext component for the encrypted output note.
    attr_accessor :enc_cipher_text

    # Represents an encoding of an ephemeral Jubjub public key.
    attr_accessor :ephemeral_key

    # Represents a ciphertext component that allows the holder of the outgoing cipher key to recover the diversified transmission key pkd and ephemeral private key esk, hence the entire note plaintext.
    attr_accessor :out_cipher_text

    # Represents the proof
    attr_accessor :proof

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'cmu' => :'cmu',
        :'cv' => :'cv',
        :'enc_cipher_text' => :'encCipherText',
        :'ephemeral_key' => :'ephemeralKey',
        :'out_cipher_text' => :'outCipherText',
        :'proof' => :'proof'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'cmu' => :'String',
        :'cv' => :'String',
        :'enc_cipher_text' => :'String',
        :'ephemeral_key' => :'String',
        :'out_cipher_text' => :'String',
        :'proof' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::ListTransactionsByBlockHeightRIBSZVShieldedOutputInner` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::ListTransactionsByBlockHeightRIBSZVShieldedOutputInner`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'cmu')
        self.cmu = attributes[:'cmu']
      end

      if attributes.key?(:'cv')
        self.cv = attributes[:'cv']
      end

      if attributes.key?(:'enc_cipher_text')
        self.enc_cipher_text = attributes[:'enc_cipher_text']
      end

      if attributes.key?(:'ephemeral_key')
        self.ephemeral_key = attributes[:'ephemeral_key']
      end

      if attributes.key?(:'out_cipher_text')
        self.out_cipher_text = attributes[:'out_cipher_text']
      end

      if attributes.key?(:'proof')
        self.proof = attributes[:'proof']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cmu.nil?
        invalid_properties.push('invalid value for "cmu", cmu cannot be nil.')
      end

      if @cv.nil?
        invalid_properties.push('invalid value for "cv", cv cannot be nil.')
      end

      if @enc_cipher_text.nil?
        invalid_properties.push('invalid value for "enc_cipher_text", enc_cipher_text cannot be nil.')
      end

      if @ephemeral_key.nil?
        invalid_properties.push('invalid value for "ephemeral_key", ephemeral_key cannot be nil.')
      end

      if @out_cipher_text.nil?
        invalid_properties.push('invalid value for "out_cipher_text", out_cipher_text cannot be nil.')
      end

      if @proof.nil?
        invalid_properties.push('invalid value for "proof", proof cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cmu.nil?
      return false if @cv.nil?
      return false if @enc_cipher_text.nil?
      return false if @ephemeral_key.nil?
      return false if @out_cipher_text.nil?
      return false if @proof.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          cmu == o.cmu &&
          cv == o.cv &&
          enc_cipher_text == o.enc_cipher_text &&
          ephemeral_key == o.ephemeral_key &&
          out_cipher_text == o.out_cipher_text &&
          proof == o.proof
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [cmu, cv, enc_cipher_text, ephemeral_key, out_cipher_text, proof].hash
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
