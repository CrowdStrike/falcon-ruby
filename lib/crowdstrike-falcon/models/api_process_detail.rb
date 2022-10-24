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
  class ApiProcessDetail
    attr_accessor :command_line

    attr_accessor :device_id

    attr_accessor :file_name

    attr_accessor :process_id

    attr_accessor :process_id_local

    attr_accessor :start_timestamp

    attr_accessor :start_timestamp_raw

    attr_accessor :stop_timestamp

    attr_accessor :stop_timestamp_raw

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'command_line' => :'command_line',
        :'device_id' => :'device_id',
        :'file_name' => :'file_name',
        :'process_id' => :'process_id',
        :'process_id_local' => :'process_id_local',
        :'start_timestamp' => :'start_timestamp',
        :'start_timestamp_raw' => :'start_timestamp_raw',
        :'stop_timestamp' => :'stop_timestamp',
        :'stop_timestamp_raw' => :'stop_timestamp_raw'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'command_line' => :'String',
        :'device_id' => :'String',
        :'file_name' => :'String',
        :'process_id' => :'String',
        :'process_id_local' => :'String',
        :'start_timestamp' => :'String',
        :'start_timestamp_raw' => :'String',
        :'stop_timestamp' => :'String',
        :'stop_timestamp_raw' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::ApiProcessDetail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::ApiProcessDetail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'command_line')
        self.command_line = attributes[:'command_line']
      end

      if attributes.key?(:'device_id')
        self.device_id = attributes[:'device_id']
      end

      if attributes.key?(:'file_name')
        self.file_name = attributes[:'file_name']
      end

      if attributes.key?(:'process_id')
        self.process_id = attributes[:'process_id']
      end

      if attributes.key?(:'process_id_local')
        self.process_id_local = attributes[:'process_id_local']
      end

      if attributes.key?(:'start_timestamp')
        self.start_timestamp = attributes[:'start_timestamp']
      end

      if attributes.key?(:'start_timestamp_raw')
        self.start_timestamp_raw = attributes[:'start_timestamp_raw']
      end

      if attributes.key?(:'stop_timestamp')
        self.stop_timestamp = attributes[:'stop_timestamp']
      end

      if attributes.key?(:'stop_timestamp_raw')
        self.stop_timestamp_raw = attributes[:'stop_timestamp_raw']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @command_line.nil?
        invalid_properties.push('invalid value for "command_line", command_line cannot be nil.')
      end

      if @device_id.nil?
        invalid_properties.push('invalid value for "device_id", device_id cannot be nil.')
      end

      if @file_name.nil?
        invalid_properties.push('invalid value for "file_name", file_name cannot be nil.')
      end

      if @process_id.nil?
        invalid_properties.push('invalid value for "process_id", process_id cannot be nil.')
      end

      if @process_id_local.nil?
        invalid_properties.push('invalid value for "process_id_local", process_id_local cannot be nil.')
      end

      if @start_timestamp.nil?
        invalid_properties.push('invalid value for "start_timestamp", start_timestamp cannot be nil.')
      end

      if @start_timestamp_raw.nil?
        invalid_properties.push('invalid value for "start_timestamp_raw", start_timestamp_raw cannot be nil.')
      end

      if @stop_timestamp.nil?
        invalid_properties.push('invalid value for "stop_timestamp", stop_timestamp cannot be nil.')
      end

      if @stop_timestamp_raw.nil?
        invalid_properties.push('invalid value for "stop_timestamp_raw", stop_timestamp_raw cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @command_line.nil?
      return false if @device_id.nil?
      return false if @file_name.nil?
      return false if @process_id.nil?
      return false if @process_id_local.nil?
      return false if @start_timestamp.nil?
      return false if @start_timestamp_raw.nil?
      return false if @stop_timestamp.nil?
      return false if @stop_timestamp_raw.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          command_line == o.command_line &&
          device_id == o.device_id &&
          file_name == o.file_name &&
          process_id == o.process_id &&
          process_id_local == o.process_id_local &&
          start_timestamp == o.start_timestamp &&
          start_timestamp_raw == o.start_timestamp_raw &&
          stop_timestamp == o.stop_timestamp &&
          stop_timestamp_raw == o.stop_timestamp_raw
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [command_line, device_id, file_name, process_id, process_id_local, start_timestamp, start_timestamp_raw, stop_timestamp, stop_timestamp_raw].hash
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
