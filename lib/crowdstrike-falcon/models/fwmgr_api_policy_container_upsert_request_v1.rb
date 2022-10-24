=begin
#CrowdStrike API Specification

#Use this API specification as a reference for the API endpoints you can use to interact with your Falcon environment. These endpoints support authentication via OAuth2 and interact with detections and network containment. For detailed usage guides and more information about API endpoints that don't yet support OAuth2, see our [documentation inside the Falcon console](https://falcon.crowdstrike.com/support/documentation). To use the APIs described below, combine the base URL with the path shown for each API endpoint. For commercial cloud customers, your base URL is `https://api.crowdstrike.com`. Each API endpoint requires authorization via an OAuth2 token. Your first API request should retrieve an OAuth2 token using the `oauth2/token` endpoint, such as `https://api.crowdstrike.com/oauth2/token`. For subsequent requests, include the OAuth2 token in an HTTP authorization header. Tokens expire after 30 minutes, after which you should make a new token request to continue making API requests.

The version of the OpenAPI document: 2022-10-19T15:57:46Z

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'date'
require 'time'

module Falcon
  class FwmgrApiPolicyContainerUpsertRequestV1
    attr_accessor :default_inbound

    attr_accessor :default_outbound

    attr_accessor :enforce

    attr_accessor :is_default_policy

    attr_accessor :platform_id

    attr_accessor :policy_id

    attr_accessor :rule_group_ids

    attr_accessor :test_mode

    attr_accessor :tracking

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'default_inbound' => :'default_inbound',
        :'default_outbound' => :'default_outbound',
        :'enforce' => :'enforce',
        :'is_default_policy' => :'is_default_policy',
        :'platform_id' => :'platform_id',
        :'policy_id' => :'policy_id',
        :'rule_group_ids' => :'rule_group_ids',
        :'test_mode' => :'test_mode',
        :'tracking' => :'tracking'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'default_inbound' => :'String',
        :'default_outbound' => :'String',
        :'enforce' => :'Boolean',
        :'is_default_policy' => :'Boolean',
        :'platform_id' => :'String',
        :'policy_id' => :'String',
        :'rule_group_ids' => :'Array<String>',
        :'test_mode' => :'Boolean',
        :'tracking' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::FwmgrApiPolicyContainerUpsertRequestV1` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::FwmgrApiPolicyContainerUpsertRequestV1`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'default_inbound')
        self.default_inbound = attributes[:'default_inbound']
      end

      if attributes.key?(:'default_outbound')
        self.default_outbound = attributes[:'default_outbound']
      end

      if attributes.key?(:'enforce')
        self.enforce = attributes[:'enforce']
      end

      if attributes.key?(:'is_default_policy')
        self.is_default_policy = attributes[:'is_default_policy']
      end

      if attributes.key?(:'platform_id')
        self.platform_id = attributes[:'platform_id']
      end

      if attributes.key?(:'policy_id')
        self.policy_id = attributes[:'policy_id']
      end

      if attributes.key?(:'rule_group_ids')
        if (value = attributes[:'rule_group_ids']).is_a?(Array)
          self.rule_group_ids = value
        end
      end

      if attributes.key?(:'test_mode')
        self.test_mode = attributes[:'test_mode']
      end

      if attributes.key?(:'tracking')
        self.tracking = attributes[:'tracking']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @default_inbound.nil?
        invalid_properties.push('invalid value for "default_inbound", default_inbound cannot be nil.')
      end

      if @default_outbound.nil?
        invalid_properties.push('invalid value for "default_outbound", default_outbound cannot be nil.')
      end

      if @enforce.nil?
        invalid_properties.push('invalid value for "enforce", enforce cannot be nil.')
      end

      if @platform_id.nil?
        invalid_properties.push('invalid value for "platform_id", platform_id cannot be nil.')
      end

      if @policy_id.nil?
        invalid_properties.push('invalid value for "policy_id", policy_id cannot be nil.')
      end

      if @rule_group_ids.nil?
        invalid_properties.push('invalid value for "rule_group_ids", rule_group_ids cannot be nil.')
      end

      if @test_mode.nil?
        invalid_properties.push('invalid value for "test_mode", test_mode cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @default_inbound.nil?
      return false if @default_outbound.nil?
      return false if @enforce.nil?
      return false if @platform_id.nil?
      return false if @policy_id.nil?
      return false if @rule_group_ids.nil?
      return false if @test_mode.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          default_inbound == o.default_inbound &&
          default_outbound == o.default_outbound &&
          enforce == o.enforce &&
          is_default_policy == o.is_default_policy &&
          platform_id == o.platform_id &&
          policy_id == o.policy_id &&
          rule_group_ids == o.rule_group_ids &&
          test_mode == o.test_mode &&
          tracking == o.tracking
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [default_inbound, default_outbound, enforce, is_default_policy, platform_id, policy_id, rule_group_ids, test_mode, tracking].hash
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
        klass = Falcon.const_get(type)
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
