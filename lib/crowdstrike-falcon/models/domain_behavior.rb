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
  class DomainBehavior
    attr_accessor :aid

    attr_accessor :behavior_id

    attr_accessor :cid

    attr_accessor :cmdline

    attr_accessor :compound_tto

    attr_accessor :detection_id

    attr_accessor :domain

    attr_accessor :filepath

    attr_accessor :incident_id

    attr_accessor :incident_ids

    attr_accessor :ioc_source

    attr_accessor :ioc_type

    attr_accessor :ioc_value

    attr_accessor :objective

    attr_accessor :pattern_disposition

    attr_accessor :pattern_disposition_details

    attr_accessor :pattern_id

    attr_accessor :sha256

    attr_accessor :tactic

    attr_accessor :technique

    attr_accessor :template_instance_id

    attr_accessor :timestamp

    attr_accessor :user_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aid' => :'aid',
        :'behavior_id' => :'behavior_id',
        :'cid' => :'cid',
        :'cmdline' => :'cmdline',
        :'compound_tto' => :'compound_tto',
        :'detection_id' => :'detection_id',
        :'domain' => :'domain',
        :'filepath' => :'filepath',
        :'incident_id' => :'incident_id',
        :'incident_ids' => :'incident_ids',
        :'ioc_source' => :'ioc_source',
        :'ioc_type' => :'ioc_type',
        :'ioc_value' => :'ioc_value',
        :'objective' => :'objective',
        :'pattern_disposition' => :'pattern_disposition',
        :'pattern_disposition_details' => :'pattern_disposition_details',
        :'pattern_id' => :'pattern_id',
        :'sha256' => :'sha256',
        :'tactic' => :'tactic',
        :'technique' => :'technique',
        :'template_instance_id' => :'template_instance_id',
        :'timestamp' => :'timestamp',
        :'user_name' => :'user_name'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'aid' => :'String',
        :'behavior_id' => :'String',
        :'cid' => :'String',
        :'cmdline' => :'String',
        :'compound_tto' => :'String',
        :'detection_id' => :'String',
        :'domain' => :'String',
        :'filepath' => :'String',
        :'incident_id' => :'String',
        :'incident_ids' => :'Array<String>',
        :'ioc_source' => :'String',
        :'ioc_type' => :'String',
        :'ioc_value' => :'String',
        :'objective' => :'String',
        :'pattern_disposition' => :'Integer',
        :'pattern_disposition_details' => :'CloudontologyPatternDisposition',
        :'pattern_id' => :'Integer',
        :'sha256' => :'String',
        :'tactic' => :'String',
        :'technique' => :'String',
        :'template_instance_id' => :'Integer',
        :'timestamp' => :'Time',
        :'user_name' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainBehavior` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainBehavior`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aid')
        self.aid = attributes[:'aid']
      end

      if attributes.key?(:'behavior_id')
        self.behavior_id = attributes[:'behavior_id']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'cmdline')
        self.cmdline = attributes[:'cmdline']
      end

      if attributes.key?(:'compound_tto')
        self.compound_tto = attributes[:'compound_tto']
      end

      if attributes.key?(:'detection_id')
        self.detection_id = attributes[:'detection_id']
      end

      if attributes.key?(:'domain')
        self.domain = attributes[:'domain']
      end

      if attributes.key?(:'filepath')
        self.filepath = attributes[:'filepath']
      end

      if attributes.key?(:'incident_id')
        self.incident_id = attributes[:'incident_id']
      end

      if attributes.key?(:'incident_ids')
        if (value = attributes[:'incident_ids']).is_a?(Array)
          self.incident_ids = value
        end
      end

      if attributes.key?(:'ioc_source')
        self.ioc_source = attributes[:'ioc_source']
      end

      if attributes.key?(:'ioc_type')
        self.ioc_type = attributes[:'ioc_type']
      end

      if attributes.key?(:'ioc_value')
        self.ioc_value = attributes[:'ioc_value']
      end

      if attributes.key?(:'objective')
        self.objective = attributes[:'objective']
      end

      if attributes.key?(:'pattern_disposition')
        self.pattern_disposition = attributes[:'pattern_disposition']
      end

      if attributes.key?(:'pattern_disposition_details')
        self.pattern_disposition_details = attributes[:'pattern_disposition_details']
      end

      if attributes.key?(:'pattern_id')
        self.pattern_id = attributes[:'pattern_id']
      end

      if attributes.key?(:'sha256')
        self.sha256 = attributes[:'sha256']
      end

      if attributes.key?(:'tactic')
        self.tactic = attributes[:'tactic']
      end

      if attributes.key?(:'technique')
        self.technique = attributes[:'technique']
      end

      if attributes.key?(:'template_instance_id')
        self.template_instance_id = attributes[:'template_instance_id']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'user_name')
        self.user_name = attributes[:'user_name']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @pattern_id.nil?
        invalid_properties.push('invalid value for "pattern_id", pattern_id cannot be nil.')
      end

      if @template_instance_id.nil?
        invalid_properties.push('invalid value for "template_instance_id", template_instance_id cannot be nil.')
      end

      if @timestamp.nil?
        invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @pattern_id.nil?
      return false if @template_instance_id.nil?
      return false if @timestamp.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aid == o.aid &&
          behavior_id == o.behavior_id &&
          cid == o.cid &&
          cmdline == o.cmdline &&
          compound_tto == o.compound_tto &&
          detection_id == o.detection_id &&
          domain == o.domain &&
          filepath == o.filepath &&
          incident_id == o.incident_id &&
          incident_ids == o.incident_ids &&
          ioc_source == o.ioc_source &&
          ioc_type == o.ioc_type &&
          ioc_value == o.ioc_value &&
          objective == o.objective &&
          pattern_disposition == o.pattern_disposition &&
          pattern_disposition_details == o.pattern_disposition_details &&
          pattern_id == o.pattern_id &&
          sha256 == o.sha256 &&
          tactic == o.tactic &&
          technique == o.technique &&
          template_instance_id == o.template_instance_id &&
          timestamp == o.timestamp &&
          user_name == o.user_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [aid, behavior_id, cid, cmdline, compound_tto, detection_id, domain, filepath, incident_id, incident_ids, ioc_source, ioc_type, ioc_value, objective, pattern_disposition, pattern_disposition_details, pattern_id, sha256, tactic, technique, template_instance_id, timestamp, user_name].hash
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
