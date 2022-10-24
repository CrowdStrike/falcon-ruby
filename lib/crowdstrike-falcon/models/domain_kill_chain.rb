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
  class DomainKillChain
    attr_accessor :actions_and_objectives

    attr_accessor :command_and_control

    attr_accessor :delivery

    attr_accessor :exploitation

    attr_accessor :installation

    attr_accessor :objectives

    attr_accessor :reconnaissance

    attr_accessor :rich_text_actions_and_objectives

    attr_accessor :rich_text_command_and_control

    attr_accessor :rich_text_delivery

    attr_accessor :rich_text_exploitation

    attr_accessor :rich_text_installation

    attr_accessor :rich_text_objectives

    attr_accessor :rich_text_reconnaissance

    attr_accessor :rich_text_weaponization

    attr_accessor :weaponization

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'actions_and_objectives' => :'actions_and_objectives',
        :'command_and_control' => :'command_and_control',
        :'delivery' => :'delivery',
        :'exploitation' => :'exploitation',
        :'installation' => :'installation',
        :'objectives' => :'objectives',
        :'reconnaissance' => :'reconnaissance',
        :'rich_text_actions_and_objectives' => :'rich_text_actions_and_objectives',
        :'rich_text_command_and_control' => :'rich_text_command_and_control',
        :'rich_text_delivery' => :'rich_text_delivery',
        :'rich_text_exploitation' => :'rich_text_exploitation',
        :'rich_text_installation' => :'rich_text_installation',
        :'rich_text_objectives' => :'rich_text_objectives',
        :'rich_text_reconnaissance' => :'rich_text_reconnaissance',
        :'rich_text_weaponization' => :'rich_text_weaponization',
        :'weaponization' => :'weaponization'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'actions_and_objectives' => :'String',
        :'command_and_control' => :'String',
        :'delivery' => :'String',
        :'exploitation' => :'String',
        :'installation' => :'String',
        :'objectives' => :'String',
        :'reconnaissance' => :'String',
        :'rich_text_actions_and_objectives' => :'String',
        :'rich_text_command_and_control' => :'String',
        :'rich_text_delivery' => :'String',
        :'rich_text_exploitation' => :'String',
        :'rich_text_installation' => :'String',
        :'rich_text_objectives' => :'String',
        :'rich_text_reconnaissance' => :'String',
        :'rich_text_weaponization' => :'String',
        :'weaponization' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DomainKillChain` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DomainKillChain`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'actions_and_objectives')
        self.actions_and_objectives = attributes[:'actions_and_objectives']
      end

      if attributes.key?(:'command_and_control')
        self.command_and_control = attributes[:'command_and_control']
      end

      if attributes.key?(:'delivery')
        self.delivery = attributes[:'delivery']
      end

      if attributes.key?(:'exploitation')
        self.exploitation = attributes[:'exploitation']
      end

      if attributes.key?(:'installation')
        self.installation = attributes[:'installation']
      end

      if attributes.key?(:'objectives')
        self.objectives = attributes[:'objectives']
      end

      if attributes.key?(:'reconnaissance')
        self.reconnaissance = attributes[:'reconnaissance']
      end

      if attributes.key?(:'rich_text_actions_and_objectives')
        self.rich_text_actions_and_objectives = attributes[:'rich_text_actions_and_objectives']
      end

      if attributes.key?(:'rich_text_command_and_control')
        self.rich_text_command_and_control = attributes[:'rich_text_command_and_control']
      end

      if attributes.key?(:'rich_text_delivery')
        self.rich_text_delivery = attributes[:'rich_text_delivery']
      end

      if attributes.key?(:'rich_text_exploitation')
        self.rich_text_exploitation = attributes[:'rich_text_exploitation']
      end

      if attributes.key?(:'rich_text_installation')
        self.rich_text_installation = attributes[:'rich_text_installation']
      end

      if attributes.key?(:'rich_text_objectives')
        self.rich_text_objectives = attributes[:'rich_text_objectives']
      end

      if attributes.key?(:'rich_text_reconnaissance')
        self.rich_text_reconnaissance = attributes[:'rich_text_reconnaissance']
      end

      if attributes.key?(:'rich_text_weaponization')
        self.rich_text_weaponization = attributes[:'rich_text_weaponization']
      end

      if attributes.key?(:'weaponization')
        self.weaponization = attributes[:'weaponization']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          actions_and_objectives == o.actions_and_objectives &&
          command_and_control == o.command_and_control &&
          delivery == o.delivery &&
          exploitation == o.exploitation &&
          installation == o.installation &&
          objectives == o.objectives &&
          reconnaissance == o.reconnaissance &&
          rich_text_actions_and_objectives == o.rich_text_actions_and_objectives &&
          rich_text_command_and_control == o.rich_text_command_and_control &&
          rich_text_delivery == o.rich_text_delivery &&
          rich_text_exploitation == o.rich_text_exploitation &&
          rich_text_installation == o.rich_text_installation &&
          rich_text_objectives == o.rich_text_objectives &&
          rich_text_reconnaissance == o.rich_text_reconnaissance &&
          rich_text_weaponization == o.rich_text_weaponization &&
          weaponization == o.weaponization
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [actions_and_objectives, command_and_control, delivery, exploitation, installation, objectives, reconnaissance, rich_text_actions_and_objectives, rich_text_command_and_control, rich_text_delivery, rich_text_exploitation, rich_text_installation, rich_text_objectives, rich_text_reconnaissance, rich_text_weaponization, weaponization].hash
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