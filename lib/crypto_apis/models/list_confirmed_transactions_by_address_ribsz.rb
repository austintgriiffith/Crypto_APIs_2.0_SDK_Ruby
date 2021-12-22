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
  # Zcash
  class ListConfirmedTransactionsByAddressRIBSZ
    # It is used to enforce balance of Spend and Output transfers, in order to prevent their replay across transactions.
    attr_accessor :binding_sig

    # Represents a block height after which the transaction will expire.
    attr_accessor :expiry_height

    # Represents an encoding of a JoinSplitSig public validating key.
    attr_accessor :join_split_pub_key

    # Is used to sign transactions that contain at least one JoinSplit description.
    attr_accessor :join_split_sig

    # Represents the locktime on the transaction on the specific blockchain, i.e. the blockheight at which the transaction is valid.
    attr_accessor :locktime

    # \"Overwinter\" is the network upgrade for the Zcash blockchain.
    attr_accessor :overwintered

    # Represents the total size of this transaction.
    attr_accessor :size

    # Represents a sequence of JoinSplit descriptions using BCTV14 proofs.
    attr_accessor :v_join_split

    # Object Array representation of transaction output descriptions
    attr_accessor :v_shielded_output

    # Object Array representation of transaction spend descriptions
    attr_accessor :v_shielded_spend

    # Defines the transaction value balance.
    attr_accessor :value_balance

    # Defines the version of the transaction.
    attr_accessor :version

    # Represents the transaction version group ID.
    attr_accessor :version_group_id

    # Object Array representation of transaction inputs
    attr_accessor :vin

    # Object Array representation of transaction outputs
    attr_accessor :vout

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'binding_sig' => :'bindingSig',
        :'expiry_height' => :'expiryHeight',
        :'join_split_pub_key' => :'joinSplitPubKey',
        :'join_split_sig' => :'joinSplitSig',
        :'locktime' => :'locktime',
        :'overwintered' => :'overwintered',
        :'size' => :'size',
        :'v_join_split' => :'vJoinSplit',
        :'v_shielded_output' => :'vShieldedOutput',
        :'v_shielded_spend' => :'vShieldedSpend',
        :'value_balance' => :'valueBalance',
        :'version' => :'version',
        :'version_group_id' => :'versionGroupId',
        :'vin' => :'vin',
        :'vout' => :'vout'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'binding_sig' => :'String',
        :'expiry_height' => :'Integer',
        :'join_split_pub_key' => :'String',
        :'join_split_sig' => :'String',
        :'locktime' => :'Integer',
        :'overwintered' => :'Boolean',
        :'size' => :'Integer',
        :'v_join_split' => :'Array<ListConfirmedTransactionsByAddressRIBSZVJoinSplit>',
        :'v_shielded_output' => :'Array<GetTransactionDetailsByTransactionIDRIBSZVShieldedOutput>',
        :'v_shielded_spend' => :'Array<GetTransactionDetailsByTransactionIDRIBSZVShieldedSpend>',
        :'value_balance' => :'String',
        :'version' => :'Integer',
        :'version_group_id' => :'String',
        :'vin' => :'Array<ListConfirmedTransactionsByAddressRIBSZVin>',
        :'vout' => :'Array<GetTransactionDetailsByTransactionIDRIBSZVout>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::ListConfirmedTransactionsByAddressRIBSZ` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::ListConfirmedTransactionsByAddressRIBSZ`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'binding_sig')
        self.binding_sig = attributes[:'binding_sig']
      end

      if attributes.key?(:'expiry_height')
        self.expiry_height = attributes[:'expiry_height']
      end

      if attributes.key?(:'join_split_pub_key')
        self.join_split_pub_key = attributes[:'join_split_pub_key']
      end

      if attributes.key?(:'join_split_sig')
        self.join_split_sig = attributes[:'join_split_sig']
      end

      if attributes.key?(:'locktime')
        self.locktime = attributes[:'locktime']
      end

      if attributes.key?(:'overwintered')
        self.overwintered = attributes[:'overwintered']
      end

      if attributes.key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.key?(:'v_join_split')
        if (value = attributes[:'v_join_split']).is_a?(Array)
          self.v_join_split = value
        end
      end

      if attributes.key?(:'v_shielded_output')
        if (value = attributes[:'v_shielded_output']).is_a?(Array)
          self.v_shielded_output = value
        end
      end

      if attributes.key?(:'v_shielded_spend')
        if (value = attributes[:'v_shielded_spend']).is_a?(Array)
          self.v_shielded_spend = value
        end
      end

      if attributes.key?(:'value_balance')
        self.value_balance = attributes[:'value_balance']
      end

      if attributes.key?(:'version')
        self.version = attributes[:'version']
      end

      if attributes.key?(:'version_group_id')
        self.version_group_id = attributes[:'version_group_id']
      end

      if attributes.key?(:'vin')
        if (value = attributes[:'vin']).is_a?(Array)
          self.vin = value
        end
      end

      if attributes.key?(:'vout')
        if (value = attributes[:'vout']).is_a?(Array)
          self.vout = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @binding_sig.nil?
        invalid_properties.push('invalid value for "binding_sig", binding_sig cannot be nil.')
      end

      if @expiry_height.nil?
        invalid_properties.push('invalid value for "expiry_height", expiry_height cannot be nil.')
      end

      if @join_split_pub_key.nil?
        invalid_properties.push('invalid value for "join_split_pub_key", join_split_pub_key cannot be nil.')
      end

      if @join_split_sig.nil?
        invalid_properties.push('invalid value for "join_split_sig", join_split_sig cannot be nil.')
      end

      if @locktime.nil?
        invalid_properties.push('invalid value for "locktime", locktime cannot be nil.')
      end

      if @overwintered.nil?
        invalid_properties.push('invalid value for "overwintered", overwintered cannot be nil.')
      end

      if @size.nil?
        invalid_properties.push('invalid value for "size", size cannot be nil.')
      end

      if @v_join_split.nil?
        invalid_properties.push('invalid value for "v_join_split", v_join_split cannot be nil.')
      end

      if @v_shielded_output.nil?
        invalid_properties.push('invalid value for "v_shielded_output", v_shielded_output cannot be nil.')
      end

      if @v_shielded_spend.nil?
        invalid_properties.push('invalid value for "v_shielded_spend", v_shielded_spend cannot be nil.')
      end

      if @value_balance.nil?
        invalid_properties.push('invalid value for "value_balance", value_balance cannot be nil.')
      end

      if @version.nil?
        invalid_properties.push('invalid value for "version", version cannot be nil.')
      end

      if @version_group_id.nil?
        invalid_properties.push('invalid value for "version_group_id", version_group_id cannot be nil.')
      end

      if @vin.nil?
        invalid_properties.push('invalid value for "vin", vin cannot be nil.')
      end

      if @vout.nil?
        invalid_properties.push('invalid value for "vout", vout cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @binding_sig.nil?
      return false if @expiry_height.nil?
      return false if @join_split_pub_key.nil?
      return false if @join_split_sig.nil?
      return false if @locktime.nil?
      return false if @overwintered.nil?
      return false if @size.nil?
      return false if @v_join_split.nil?
      return false if @v_shielded_output.nil?
      return false if @v_shielded_spend.nil?
      return false if @value_balance.nil?
      return false if @version.nil?
      return false if @version_group_id.nil?
      return false if @vin.nil?
      return false if @vout.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          binding_sig == o.binding_sig &&
          expiry_height == o.expiry_height &&
          join_split_pub_key == o.join_split_pub_key &&
          join_split_sig == o.join_split_sig &&
          locktime == o.locktime &&
          overwintered == o.overwintered &&
          size == o.size &&
          v_join_split == o.v_join_split &&
          v_shielded_output == o.v_shielded_output &&
          v_shielded_spend == o.v_shielded_spend &&
          value_balance == o.value_balance &&
          version == o.version &&
          version_group_id == o.version_group_id &&
          vin == o.vin &&
          vout == o.vout
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [binding_sig, expiry_height, join_split_pub_key, join_split_sig, locktime, overwintered, size, v_join_split, v_shielded_output, v_shielded_spend, value_balance, version, version_group_id, vin, vout].hash
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
