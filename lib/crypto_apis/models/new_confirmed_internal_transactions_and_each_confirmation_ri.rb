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
  class NewConfirmedInternalTransactionsAndEachConfirmationRI
    # Defines the specific address of the internal transaction.
    attr_accessor :address

    # Represents the Secret Key value provided by the customer. This field is used for security purposes during the callback notification, in order to prove the sender of the callback as Crypto APIs.
    attr_accessor :callback_secret_key

    # Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs.
    attr_accessor :callback_url

    # Represents the number of confirmations, i.e. the amount of blocks that have been built on top of this block.
    attr_accessor :confirmations_count

    # Defines the specific time/date when the subscription was created in Unix Timestamp.
    attr_accessor :created_timestamp

    # Defines the type of the specific event available for the customer to subscribe to for callback notification.
    attr_accessor :event_type

    # Defines whether the subscription is active or not. Set as boolean.
    attr_accessor :is_active

    # Represents a unique ID used to reference the specific callback subscription.
    attr_accessor :reference_id

    # Represents the unique identification string that defines the transaction.
    attr_accessor :transaction_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address' => :'address',
        :'callback_secret_key' => :'callbackSecretKey',
        :'callback_url' => :'callbackUrl',
        :'confirmations_count' => :'confirmationsCount',
        :'created_timestamp' => :'createdTimestamp',
        :'event_type' => :'eventType',
        :'is_active' => :'isActive',
        :'reference_id' => :'referenceId',
        :'transaction_id' => :'transactionId'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'address' => :'String',
        :'callback_secret_key' => :'String',
        :'callback_url' => :'String',
        :'confirmations_count' => :'Integer',
        :'created_timestamp' => :'Integer',
        :'event_type' => :'String',
        :'is_active' => :'Boolean',
        :'reference_id' => :'String',
        :'transaction_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::NewConfirmedInternalTransactionsAndEachConfirmationRI` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::NewConfirmedInternalTransactionsAndEachConfirmationRI`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.key?(:'callback_secret_key')
        self.callback_secret_key = attributes[:'callback_secret_key']
      end

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.key?(:'confirmations_count')
        self.confirmations_count = attributes[:'confirmations_count']
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'transaction_id')
        self.transaction_id = attributes[:'transaction_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @address.nil?
        invalid_properties.push('invalid value for "address", address cannot be nil.')
      end

      if @callback_secret_key.nil?
        invalid_properties.push('invalid value for "callback_secret_key", callback_secret_key cannot be nil.')
      end

      if @callback_url.nil?
        invalid_properties.push('invalid value for "callback_url", callback_url cannot be nil.')
      end

      if @confirmations_count.nil?
        invalid_properties.push('invalid value for "confirmations_count", confirmations_count cannot be nil.')
      end

      if @created_timestamp.nil?
        invalid_properties.push('invalid value for "created_timestamp", created_timestamp cannot be nil.')
      end

      if @event_type.nil?
        invalid_properties.push('invalid value for "event_type", event_type cannot be nil.')
      end

      if @is_active.nil?
        invalid_properties.push('invalid value for "is_active", is_active cannot be nil.')
      end

      if @reference_id.nil?
        invalid_properties.push('invalid value for "reference_id", reference_id cannot be nil.')
      end

      if @transaction_id.nil?
        invalid_properties.push('invalid value for "transaction_id", transaction_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @address.nil?
      return false if @callback_secret_key.nil?
      return false if @callback_url.nil?
      return false if @confirmations_count.nil?
      return false if @created_timestamp.nil?
      return false if @event_type.nil?
      return false if @is_active.nil?
      return false if @reference_id.nil?
      return false if @transaction_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address == o.address &&
          callback_secret_key == o.callback_secret_key &&
          callback_url == o.callback_url &&
          confirmations_count == o.confirmations_count &&
          created_timestamp == o.created_timestamp &&
          event_type == o.event_type &&
          is_active == o.is_active &&
          reference_id == o.reference_id &&
          transaction_id == o.transaction_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [address, callback_secret_key, callback_url, confirmations_count, created_timestamp, event_type, is_active, reference_id, transaction_id].hash
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
