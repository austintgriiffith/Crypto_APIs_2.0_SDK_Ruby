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
  class GetAssetDetailsByAssetSymbolRI
    # Defines the unique ID of the specific asset.
    attr_accessor :asset_id

    attr_accessor :asset_logo

    # Specifies the name of the asset in question.
    attr_accessor :asset_name

    # Specifies the asset's original symbol as introduced by its founders.
    attr_accessor :asset_original_symbol

    # Specifies the asset's unique symbol in the Crypto APIs listings.
    attr_accessor :asset_symbol

    # Defines the type of the supported asset. This could be either \"crypto\" or \"fiat\".
    attr_accessor :asset_type

    attr_accessor :latest_rate

    # Represents the asset`s unique slug string in Crypto APIs listings.
    attr_accessor :slug

    attr_accessor :specific_data

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
        :'asset_id' => :'assetId',
        :'asset_logo' => :'assetLogo',
        :'asset_name' => :'assetName',
        :'asset_original_symbol' => :'assetOriginalSymbol',
        :'asset_symbol' => :'assetSymbol',
        :'asset_type' => :'assetType',
        :'latest_rate' => :'latestRate',
        :'slug' => :'slug',
        :'specific_data' => :'specificData'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'asset_id' => :'String',
        :'asset_logo' => :'GetAssetDetailsByAssetIDRIAssetLogo',
        :'asset_name' => :'String',
        :'asset_original_symbol' => :'String',
        :'asset_symbol' => :'String',
        :'asset_type' => :'String',
        :'latest_rate' => :'GetAssetDetailsByAssetIDRILatestRate',
        :'slug' => :'String',
        :'specific_data' => :'GetAssetDetailsByAssetSymbolRIS'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `CryptoApis::GetAssetDetailsByAssetSymbolRI` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `CryptoApis::GetAssetDetailsByAssetSymbolRI`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'asset_id')
        self.asset_id = attributes[:'asset_id']
      end

      if attributes.key?(:'asset_logo')
        self.asset_logo = attributes[:'asset_logo']
      end

      if attributes.key?(:'asset_name')
        self.asset_name = attributes[:'asset_name']
      end

      if attributes.key?(:'asset_original_symbol')
        self.asset_original_symbol = attributes[:'asset_original_symbol']
      end

      if attributes.key?(:'asset_symbol')
        self.asset_symbol = attributes[:'asset_symbol']
      end

      if attributes.key?(:'asset_type')
        self.asset_type = attributes[:'asset_type']
      end

      if attributes.key?(:'latest_rate')
        self.latest_rate = attributes[:'latest_rate']
      end

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.key?(:'specific_data')
        self.specific_data = attributes[:'specific_data']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @asset_id.nil?
        invalid_properties.push('invalid value for "asset_id", asset_id cannot be nil.')
      end

      if @asset_logo.nil?
        invalid_properties.push('invalid value for "asset_logo", asset_logo cannot be nil.')
      end

      if @asset_name.nil?
        invalid_properties.push('invalid value for "asset_name", asset_name cannot be nil.')
      end

      if @asset_original_symbol.nil?
        invalid_properties.push('invalid value for "asset_original_symbol", asset_original_symbol cannot be nil.')
      end

      if @asset_symbol.nil?
        invalid_properties.push('invalid value for "asset_symbol", asset_symbol cannot be nil.')
      end

      if @asset_type.nil?
        invalid_properties.push('invalid value for "asset_type", asset_type cannot be nil.')
      end

      if @latest_rate.nil?
        invalid_properties.push('invalid value for "latest_rate", latest_rate cannot be nil.')
      end

      if @specific_data.nil?
        invalid_properties.push('invalid value for "specific_data", specific_data cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @asset_id.nil?
      return false if @asset_logo.nil?
      return false if @asset_name.nil?
      return false if @asset_original_symbol.nil?
      return false if @asset_symbol.nil?
      return false if @asset_type.nil?
      asset_type_validator = EnumAttributeValidator.new('String', ["fiat", "crypto"])
      return false unless asset_type_validator.valid?(@asset_type)
      return false if @latest_rate.nil?
      return false if @specific_data.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] asset_type Object to be assigned
    def asset_type=(asset_type)
      validator = EnumAttributeValidator.new('String', ["fiat", "crypto"])
      unless validator.valid?(asset_type)
        fail ArgumentError, "invalid value for \"asset_type\", must be one of #{validator.allowable_values}."
      end
      @asset_type = asset_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          asset_id == o.asset_id &&
          asset_logo == o.asset_logo &&
          asset_name == o.asset_name &&
          asset_original_symbol == o.asset_original_symbol &&
          asset_symbol == o.asset_symbol &&
          asset_type == o.asset_type &&
          latest_rate == o.latest_rate &&
          slug == o.slug &&
          specific_data == o.specific_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [asset_id, asset_logo, asset_name, asset_original_symbol, asset_symbol, asset_type, latest_rate, slug, specific_data].hash
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
