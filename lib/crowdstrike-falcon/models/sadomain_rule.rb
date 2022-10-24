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
  class SadomainRule
    # Whether to monitor for breach data. Available only for `Company Domains` and `Email addresses` rule topics. When enabled, ownership of the monitored domains or emails is required
    attr_accessor :breach_monitoring_enabled

    attr_accessor :cid

    # The creation time for a given rule
    attr_accessor :created_timestamp

    # The FQL filter contained in a rule and used for searching. Parentheses may be added automatically for clarity
    attr_accessor :filter

    # The ID of a given rule
    attr_accessor :id

    # The name of a given rule
    attr_accessor :name

    attr_accessor :ownership_assets

    # The permissions of a given rule
    attr_accessor :permissions

    # The priority of a given rule
    attr_accessor :priority

    # The status of a given rule
    attr_accessor :status

    # The detailed status message of a given rule
    attr_accessor :status_message

    # Whether to monitor for substring matches. Only available for the `Typosquatting` rule topic
    attr_accessor :substring_matching_enabled

    # The topic of a given rule
    attr_accessor :topic

    # The last updated time for a given rule
    attr_accessor :updated_timestamp

    # The user ID of the user that created a given rule
    attr_accessor :user_id

    # The user name of the user that created a given rule
    attr_accessor :user_name

    # The UUID of the user that created a given rule
    attr_accessor :user_uuid

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'breach_monitoring_enabled' => :'breach_monitoring_enabled',
        :'cid' => :'cid',
        :'created_timestamp' => :'created_timestamp',
        :'filter' => :'filter',
        :'id' => :'id',
        :'name' => :'name',
        :'ownership_assets' => :'ownership_assets',
        :'permissions' => :'permissions',
        :'priority' => :'priority',
        :'status' => :'status',
        :'status_message' => :'status_message',
        :'substring_matching_enabled' => :'substring_matching_enabled',
        :'topic' => :'topic',
        :'updated_timestamp' => :'updated_timestamp',
        :'user_id' => :'user_id',
        :'user_name' => :'user_name',
        :'user_uuid' => :'user_uuid'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'breach_monitoring_enabled' => :'Boolean',
        :'cid' => :'String',
        :'created_timestamp' => :'Time',
        :'filter' => :'String',
        :'id' => :'String',
        :'name' => :'String',
        :'ownership_assets' => :'SadomainCustomerAssets',
        :'permissions' => :'String',
        :'priority' => :'String',
        :'status' => :'String',
        :'status_message' => :'String',
        :'substring_matching_enabled' => :'Boolean',
        :'topic' => :'String',
        :'updated_timestamp' => :'Time',
        :'user_id' => :'String',
        :'user_name' => :'String',
        :'user_uuid' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::SadomainRule` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::SadomainRule`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'breach_monitoring_enabled')
        self.breach_monitoring_enabled = attributes[:'breach_monitoring_enabled']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'filter')
        self.filter = attributes[:'filter']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'ownership_assets')
        self.ownership_assets = attributes[:'ownership_assets']
      end

      if attributes.key?(:'permissions')
        self.permissions = attributes[:'permissions']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'status_message')
        self.status_message = attributes[:'status_message']
      end

      if attributes.key?(:'substring_matching_enabled')
        self.substring_matching_enabled = attributes[:'substring_matching_enabled']
      end

      if attributes.key?(:'topic')
        self.topic = attributes[:'topic']
      end

      if attributes.key?(:'updated_timestamp')
        self.updated_timestamp = attributes[:'updated_timestamp']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'user_name')
        self.user_name = attributes[:'user_name']
      end

      if attributes.key?(:'user_uuid')
        self.user_uuid = attributes[:'user_uuid']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @breach_monitoring_enabled.nil?
        invalid_properties.push('invalid value for "breach_monitoring_enabled", breach_monitoring_enabled cannot be nil.')
      end

      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @created_timestamp.nil?
        invalid_properties.push('invalid value for "created_timestamp", created_timestamp cannot be nil.')
      end

      if @filter.nil?
        invalid_properties.push('invalid value for "filter", filter cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @permissions.nil?
        invalid_properties.push('invalid value for "permissions", permissions cannot be nil.')
      end

      if @priority.nil?
        invalid_properties.push('invalid value for "priority", priority cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @substring_matching_enabled.nil?
        invalid_properties.push('invalid value for "substring_matching_enabled", substring_matching_enabled cannot be nil.')
      end

      if @topic.nil?
        invalid_properties.push('invalid value for "topic", topic cannot be nil.')
      end

      if @updated_timestamp.nil?
        invalid_properties.push('invalid value for "updated_timestamp", updated_timestamp cannot be nil.')
      end

      if @user_uuid.nil?
        invalid_properties.push('invalid value for "user_uuid", user_uuid cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @breach_monitoring_enabled.nil?
      return false if @cid.nil?
      return false if @created_timestamp.nil?
      return false if @filter.nil?
      return false if @id.nil?
      return false if @name.nil?
      return false if @permissions.nil?
      return false if @priority.nil?
      return false if @status.nil?
      return false if @substring_matching_enabled.nil?
      return false if @topic.nil?
      return false if @updated_timestamp.nil?
      return false if @user_uuid.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          breach_monitoring_enabled == o.breach_monitoring_enabled &&
          cid == o.cid &&
          created_timestamp == o.created_timestamp &&
          filter == o.filter &&
          id == o.id &&
          name == o.name &&
          ownership_assets == o.ownership_assets &&
          permissions == o.permissions &&
          priority == o.priority &&
          status == o.status &&
          status_message == o.status_message &&
          substring_matching_enabled == o.substring_matching_enabled &&
          topic == o.topic &&
          updated_timestamp == o.updated_timestamp &&
          user_id == o.user_id &&
          user_name == o.user_name &&
          user_uuid == o.user_uuid
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [breach_monitoring_enabled, cid, created_timestamp, filter, id, name, ownership_assets, permissions, priority, status, status_message, substring_matching_enabled, topic, updated_timestamp, user_id, user_name, user_uuid].hash
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