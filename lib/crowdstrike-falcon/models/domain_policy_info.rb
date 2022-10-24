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
  class DomainPolicyInfo
    attr_accessor :created_at

    attr_accessor :deleted_at

    attr_accessor :id

    attr_accessor :updated_at

    attr_accessor :alert_logic

    attr_accessor :api_command

    attr_accessor :cli_command

    attr_accessor :cloud_document

    attr_accessor :cloud_platform

    attr_accessor :cloud_platform_type

    attr_accessor :cloud_service

    attr_accessor :cloud_service_friendly

    attr_accessor :cloud_service_subtype

    attr_accessor :cloud_service_type

    attr_accessor :default_severity

    attr_accessor :description

    attr_accessor :event_type

    attr_accessor :mitre_attack_cloud_matrix

    attr_accessor :mitre_attack_cloud_subtype

    attr_accessor :policy_fail_query

    attr_accessor :policy_pass_query

    attr_accessor :policy_remediation

    attr_accessor :policy_severity

    attr_accessor :policy_statement

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_at' => :'CreatedAt',
        :'deleted_at' => :'DeletedAt',
        :'id' => :'ID',
        :'updated_at' => :'UpdatedAt',
        :'alert_logic' => :'alert_logic',
        :'api_command' => :'api_command',
        :'cli_command' => :'cli_command',
        :'cloud_document' => :'cloud_document',
        :'cloud_platform' => :'cloud_platform',
        :'cloud_platform_type' => :'cloud_platform_type',
        :'cloud_service' => :'cloud_service',
        :'cloud_service_friendly' => :'cloud_service_friendly',
        :'cloud_service_subtype' => :'cloud_service_subtype',
        :'cloud_service_type' => :'cloud_service_type',
        :'default_severity' => :'default_severity',
        :'description' => :'description',
        :'event_type' => :'event_type',
        :'mitre_attack_cloud_matrix' => :'mitre_attack_cloud_matrix',
        :'mitre_attack_cloud_subtype' => :'mitre_attack_cloud_subtype',
        :'policy_fail_query' => :'policy_fail_query',
        :'policy_pass_query' => :'policy_pass_query',
        :'policy_remediation' => :'policy_remediation',
        :'policy_severity' => :'policy_severity',
        :'policy_statement' => :'policy_statement'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'created_at' => :'Time',
        :'deleted_at' => :'Time',
        :'id' => :'Integer',
        :'updated_at' => :'Time',
        :'alert_logic' => :'String',
        :'api_command' => :'String',
        :'cli_command' => :'String',
        :'cloud_document' => :'String',
        :'cloud_platform' => :'Integer',
        :'cloud_platform_type' => :'String',
        :'cloud_service' => :'Integer',
        :'cloud_service_friendly' => :'String',
        :'cloud_service_subtype' => :'String',
        :'cloud_service_type' => :'String',
        :'default_severity' => :'String',
        :'description' => :'String',
        :'event_type' => :'String',
        :'mitre_attack_cloud_matrix' => :'String',
        :'mitre_attack_cloud_subtype' => :'String',
        :'policy_fail_query' => :'String',
        :'policy_pass_query' => :'String',
        :'policy_remediation' => :'String',
        :'policy_severity' => :'Integer',
        :'policy_statement' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainPolicyInfo` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainPolicyInfo`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'alert_logic')
        self.alert_logic = attributes[:'alert_logic']
      end

      if attributes.key?(:'api_command')
        self.api_command = attributes[:'api_command']
      end

      if attributes.key?(:'cli_command')
        self.cli_command = attributes[:'cli_command']
      end

      if attributes.key?(:'cloud_document')
        self.cloud_document = attributes[:'cloud_document']
      end

      if attributes.key?(:'cloud_platform')
        self.cloud_platform = attributes[:'cloud_platform']
      end

      if attributes.key?(:'cloud_platform_type')
        self.cloud_platform_type = attributes[:'cloud_platform_type']
      end

      if attributes.key?(:'cloud_service')
        self.cloud_service = attributes[:'cloud_service']
      end

      if attributes.key?(:'cloud_service_friendly')
        self.cloud_service_friendly = attributes[:'cloud_service_friendly']
      end

      if attributes.key?(:'cloud_service_subtype')
        self.cloud_service_subtype = attributes[:'cloud_service_subtype']
      end

      if attributes.key?(:'cloud_service_type')
        self.cloud_service_type = attributes[:'cloud_service_type']
      end

      if attributes.key?(:'default_severity')
        self.default_severity = attributes[:'default_severity']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.key?(:'mitre_attack_cloud_matrix')
        self.mitre_attack_cloud_matrix = attributes[:'mitre_attack_cloud_matrix']
      end

      if attributes.key?(:'mitre_attack_cloud_subtype')
        self.mitre_attack_cloud_subtype = attributes[:'mitre_attack_cloud_subtype']
      end

      if attributes.key?(:'policy_fail_query')
        self.policy_fail_query = attributes[:'policy_fail_query']
      end

      if attributes.key?(:'policy_pass_query')
        self.policy_pass_query = attributes[:'policy_pass_query']
      end

      if attributes.key?(:'policy_remediation')
        self.policy_remediation = attributes[:'policy_remediation']
      end

      if attributes.key?(:'policy_severity')
        self.policy_severity = attributes[:'policy_severity']
      end

      if attributes.key?(:'policy_statement')
        self.policy_statement = attributes[:'policy_statement']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @deleted_at.nil?
        invalid_properties.push('invalid value for "deleted_at", deleted_at cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @created_at.nil?
      return false if @deleted_at.nil?
      return false if @id.nil?
      return false if @updated_at.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          id == o.id &&
          updated_at == o.updated_at &&
          alert_logic == o.alert_logic &&
          api_command == o.api_command &&
          cli_command == o.cli_command &&
          cloud_document == o.cloud_document &&
          cloud_platform == o.cloud_platform &&
          cloud_platform_type == o.cloud_platform_type &&
          cloud_service == o.cloud_service &&
          cloud_service_friendly == o.cloud_service_friendly &&
          cloud_service_subtype == o.cloud_service_subtype &&
          cloud_service_type == o.cloud_service_type &&
          default_severity == o.default_severity &&
          description == o.description &&
          event_type == o.event_type &&
          mitre_attack_cloud_matrix == o.mitre_attack_cloud_matrix &&
          mitre_attack_cloud_subtype == o.mitre_attack_cloud_subtype &&
          policy_fail_query == o.policy_fail_query &&
          policy_pass_query == o.policy_pass_query &&
          policy_remediation == o.policy_remediation &&
          policy_severity == o.policy_severity &&
          policy_statement == o.policy_statement
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_at, deleted_at, id, updated_at, alert_logic, api_command, cli_command, cloud_document, cloud_platform, cloud_platform_type, cloud_service, cloud_service_friendly, cloud_service_subtype, cloud_service_type, default_severity, description, event_type, mitre_attack_cloud_matrix, mitre_attack_cloud_subtype, policy_fail_query, policy_pass_query, policy_remediation, policy_severity, policy_statement].hash
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
