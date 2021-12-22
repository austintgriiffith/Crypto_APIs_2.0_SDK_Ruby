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
  class AddTokensToExistingFromAddressRI
    # Represents the URL that is set by the customer where the callback will be received at. The callback notification will be received only if and when the event occurs.
    attr_accessor :callback_url

    # Represents the number of confirmations, i.e. the amount of blocks that have been built on top of this block.
    attr_accessor :confirmations_count

    # Defines the specific time/date when the automatic forwarding was created in Unix Timestamp.
    attr_accessor :created_timestamp

    # Represents the specific fee address, which is always automatically generated. Users must fund it.
    attr_accessor :fee_address

    # Represents the fee priority of the automation, whether it is \"SLOW\", \"STANDARD\" or \"FAST\".
    attr_accessor :fee_priority

    # Represents the hash of the address that forwards the tokens.
    attr_accessor :from_address

    # Represents the minimum transfer amount of the tokens in the `fromAddress` that can be allowed for an automatic forwarding.
    attr_accessor :minimum_transfer_amount

    # Represents a unique ID used to reference the specific callback subscription.
    attr_accessor :reference_id

    # Represents the hash of the address the tokens are forwarded to.
    attr_accessor :to_address

    attr_accessor :token_data

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
        :'callback_url' => :'callbackUrl',
        :'confirmations_count' => :'confirmationsCount',
        :'created_timestamp' => :'createdTimestamp',
        :'fee_address' => :'feeAddress',
        :'fee_priority' => :'feePriority',
        :'from_address' => :'fromAddress',
        :'minimum_transfer_amount' => :'minimumTransferAmount',
        :'reference_id' => :'referenceId',
        :'to_address' => :'toAddress',
        :'token_data' => :'tokenData'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'callback_url' => :'String',
        :'confirmations_count' => :'Integer',
        :'created_timestamp' => :'Integer',
        :'fee_address' => :'String',
        :'fee_priority' => :'String',
        :'from_address' => :'String',
        :'minimum_transfer_amount' => :'String',
        :'reference_id' => :'String',
        :'to_address' => :'String',
        :'token_data' => :'AddTokensToExistingFromAddressRITS'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::AddTokensToExistingFromAddressRI` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::AddTokensToExistingFromAddressRI`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'callback_url')
        self.callback_url = attributes[:'callback_url']
      end

      if attributes.key?(:'confirmations_count')
        self.confirmations_count = attributes[:'confirmations_count']
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'fee_address')
        self.fee_address = attributes[:'fee_address']
      end

      if attributes.key?(:'fee_priority')
        self.fee_priority = attributes[:'fee_priority']
      end

      if attributes.key?(:'from_address')
        self.from_address = attributes[:'from_address']
      end

      if attributes.key?(:'minimum_transfer_amount')
        self.minimum_transfer_amount = attributes[:'minimum_transfer_amount']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'to_address')
        self.to_address = attributes[:'to_address']
      end

      if attributes.key?(:'token_data')
        self.token_data = attributes[:'token_data']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @callback_url.nil?
        invalid_properties.push('invalid value for "callback_url", callback_url cannot be nil.')
      end

      if @confirmations_count.nil?
        invalid_properties.push('invalid value for "confirmations_count", confirmations_count cannot be nil.')
      end

      if @created_timestamp.nil?
        invalid_properties.push('invalid value for "created_timestamp", created_timestamp cannot be nil.')
      end

      if @fee_address.nil?
        invalid_properties.push('invalid value for "fee_address", fee_address cannot be nil.')
      end

      if @fee_priority.nil?
        invalid_properties.push('invalid value for "fee_priority", fee_priority cannot be nil.')
      end

      if @from_address.nil?
        invalid_properties.push('invalid value for "from_address", from_address cannot be nil.')
      end

      if @minimum_transfer_amount.nil?
        invalid_properties.push('invalid value for "minimum_transfer_amount", minimum_transfer_amount cannot be nil.')
      end

      if @reference_id.nil?
        invalid_properties.push('invalid value for "reference_id", reference_id cannot be nil.')
      end

      if @to_address.nil?
        invalid_properties.push('invalid value for "to_address", to_address cannot be nil.')
      end

      if @token_data.nil?
        invalid_properties.push('invalid value for "token_data", token_data cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @callback_url.nil?
      return false if @confirmations_count.nil?
      return false if @created_timestamp.nil?
      return false if @fee_address.nil?
      return false if @fee_priority.nil?
      fee_priority_validator = EnumAttributeValidator.new('String', ["slow", "standard", "fast"])
      return false unless fee_priority_validator.valid?(@fee_priority)
      return false if @from_address.nil?
      return false if @minimum_transfer_amount.nil?
      return false if @reference_id.nil?
      return false if @to_address.nil?
      return false if @token_data.nil?
      true
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          callback_url == o.callback_url &&
          confirmations_count == o.confirmations_count &&
          created_timestamp == o.created_timestamp &&
          fee_address == o.fee_address &&
          fee_priority == o.fee_priority &&
          from_address == o.from_address &&
          minimum_transfer_amount == o.minimum_transfer_amount &&
          reference_id == o.reference_id &&
          to_address == o.to_address &&
          token_data == o.token_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [callback_url, confirmations_count, created_timestamp, fee_address, fee_priority, from_address, minimum_transfer_amount, reference_id, to_address, token_data].hash
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
