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
  class FwmgrFirewallMatchEventResponse
    attr_accessor :aid

    attr_accessor :cid

    attr_accessor :command_line

    attr_accessor :connection_direction

    attr_accessor :event_type

    attr_accessor :flags

    attr_accessor :hidden

    attr_accessor :host_name

    attr_accessor :icmp_code

    attr_accessor :icmp_type

    attr_accessor :id

    attr_accessor :image_file_name

    attr_accessor :ipv

    attr_accessor :local_address

    attr_accessor :local_port

    attr_accessor :match_count

    attr_accessor :match_count_since_last_event

    attr_accessor :network_profile

    attr_accessor :pid

    attr_accessor :policy_id

    attr_accessor :policy_name

    attr_accessor :protocol

    attr_accessor :remote_address

    attr_accessor :remote_port

    attr_accessor :rule_action

    attr_accessor :rule_description

    attr_accessor :rule_family_id

    attr_accessor :rule_group_name

    attr_accessor :rule_id

    attr_accessor :rule_name

    attr_accessor :status

    attr_accessor :timestamp

    attr_accessor :tree_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'aid' => :'aid',
        :'cid' => :'cid',
        :'command_line' => :'command_line',
        :'connection_direction' => :'connection_direction',
        :'event_type' => :'event_type',
        :'flags' => :'flags',
        :'hidden' => :'hidden',
        :'host_name' => :'host_name',
        :'icmp_code' => :'icmp_code',
        :'icmp_type' => :'icmp_type',
        :'id' => :'id',
        :'image_file_name' => :'image_file_name',
        :'ipv' => :'ipv',
        :'local_address' => :'local_address',
        :'local_port' => :'local_port',
        :'match_count' => :'match_count',
        :'match_count_since_last_event' => :'match_count_since_last_event',
        :'network_profile' => :'network_profile',
        :'pid' => :'pid',
        :'policy_id' => :'policy_id',
        :'policy_name' => :'policy_name',
        :'protocol' => :'protocol',
        :'remote_address' => :'remote_address',
        :'remote_port' => :'remote_port',
        :'rule_action' => :'rule_action',
        :'rule_description' => :'rule_description',
        :'rule_family_id' => :'rule_family_id',
        :'rule_group_name' => :'rule_group_name',
        :'rule_id' => :'rule_id',
        :'rule_name' => :'rule_name',
        :'status' => :'status',
        :'timestamp' => :'timestamp',
        :'tree_id' => :'tree_id'
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
        :'cid' => :'String',
        :'command_line' => :'String',
        :'connection_direction' => :'String',
        :'event_type' => :'String',
        :'flags' => :'FwmgrFirewallFlags',
        :'hidden' => :'Boolean',
        :'host_name' => :'String',
        :'icmp_code' => :'String',
        :'icmp_type' => :'String',
        :'id' => :'String',
        :'image_file_name' => :'String',
        :'ipv' => :'String',
        :'local_address' => :'String',
        :'local_port' => :'String',
        :'match_count' => :'String',
        :'match_count_since_last_event' => :'String',
        :'network_profile' => :'String',
        :'pid' => :'String',
        :'policy_id' => :'String',
        :'policy_name' => :'String',
        :'protocol' => :'String',
        :'remote_address' => :'String',
        :'remote_port' => :'String',
        :'rule_action' => :'String',
        :'rule_description' => :'String',
        :'rule_family_id' => :'String',
        :'rule_group_name' => :'String',
        :'rule_id' => :'String',
        :'rule_name' => :'String',
        :'status' => :'String',
        :'timestamp' => :'String',
        :'tree_id' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::FwmgrFirewallMatchEventResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::FwmgrFirewallMatchEventResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aid')
        self.aid = attributes[:'aid']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'command_line')
        self.command_line = attributes[:'command_line']
      end

      if attributes.key?(:'connection_direction')
        self.connection_direction = attributes[:'connection_direction']
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.key?(:'flags')
        self.flags = attributes[:'flags']
      end

      if attributes.key?(:'hidden')
        self.hidden = attributes[:'hidden']
      end

      if attributes.key?(:'host_name')
        self.host_name = attributes[:'host_name']
      end

      if attributes.key?(:'icmp_code')
        self.icmp_code = attributes[:'icmp_code']
      end

      if attributes.key?(:'icmp_type')
        self.icmp_type = attributes[:'icmp_type']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'image_file_name')
        self.image_file_name = attributes[:'image_file_name']
      end

      if attributes.key?(:'ipv')
        self.ipv = attributes[:'ipv']
      end

      if attributes.key?(:'local_address')
        self.local_address = attributes[:'local_address']
      end

      if attributes.key?(:'local_port')
        self.local_port = attributes[:'local_port']
      end

      if attributes.key?(:'match_count')
        self.match_count = attributes[:'match_count']
      end

      if attributes.key?(:'match_count_since_last_event')
        self.match_count_since_last_event = attributes[:'match_count_since_last_event']
      end

      if attributes.key?(:'network_profile')
        self.network_profile = attributes[:'network_profile']
      end

      if attributes.key?(:'pid')
        self.pid = attributes[:'pid']
      end

      if attributes.key?(:'policy_id')
        self.policy_id = attributes[:'policy_id']
      end

      if attributes.key?(:'policy_name')
        self.policy_name = attributes[:'policy_name']
      end

      if attributes.key?(:'protocol')
        self.protocol = attributes[:'protocol']
      end

      if attributes.key?(:'remote_address')
        self.remote_address = attributes[:'remote_address']
      end

      if attributes.key?(:'remote_port')
        self.remote_port = attributes[:'remote_port']
      end

      if attributes.key?(:'rule_action')
        self.rule_action = attributes[:'rule_action']
      end

      if attributes.key?(:'rule_description')
        self.rule_description = attributes[:'rule_description']
      end

      if attributes.key?(:'rule_family_id')
        self.rule_family_id = attributes[:'rule_family_id']
      end

      if attributes.key?(:'rule_group_name')
        self.rule_group_name = attributes[:'rule_group_name']
      end

      if attributes.key?(:'rule_id')
        self.rule_id = attributes[:'rule_id']
      end

      if attributes.key?(:'rule_name')
        self.rule_name = attributes[:'rule_name']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'tree_id')
        self.tree_id = attributes[:'tree_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @aid.nil?
        invalid_properties.push('invalid value for "aid", aid cannot be nil.')
      end

      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @command_line.nil?
        invalid_properties.push('invalid value for "command_line", command_line cannot be nil.')
      end

      if @connection_direction.nil?
        invalid_properties.push('invalid value for "connection_direction", connection_direction cannot be nil.')
      end

      if @event_type.nil?
        invalid_properties.push('invalid value for "event_type", event_type cannot be nil.')
      end

      if @flags.nil?
        invalid_properties.push('invalid value for "flags", flags cannot be nil.')
      end

      if @hidden.nil?
        invalid_properties.push('invalid value for "hidden", hidden cannot be nil.')
      end

      if @host_name.nil?
        invalid_properties.push('invalid value for "host_name", host_name cannot be nil.')
      end

      if @icmp_code.nil?
        invalid_properties.push('invalid value for "icmp_code", icmp_code cannot be nil.')
      end

      if @icmp_type.nil?
        invalid_properties.push('invalid value for "icmp_type", icmp_type cannot be nil.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @image_file_name.nil?
        invalid_properties.push('invalid value for "image_file_name", image_file_name cannot be nil.')
      end

      if @ipv.nil?
        invalid_properties.push('invalid value for "ipv", ipv cannot be nil.')
      end

      if @local_address.nil?
        invalid_properties.push('invalid value for "local_address", local_address cannot be nil.')
      end

      if @local_port.nil?
        invalid_properties.push('invalid value for "local_port", local_port cannot be nil.')
      end

      if @match_count.nil?
        invalid_properties.push('invalid value for "match_count", match_count cannot be nil.')
      end

      if @match_count_since_last_event.nil?
        invalid_properties.push('invalid value for "match_count_since_last_event", match_count_since_last_event cannot be nil.')
      end

      if @network_profile.nil?
        invalid_properties.push('invalid value for "network_profile", network_profile cannot be nil.')
      end

      if @pid.nil?
        invalid_properties.push('invalid value for "pid", pid cannot be nil.')
      end

      if @policy_id.nil?
        invalid_properties.push('invalid value for "policy_id", policy_id cannot be nil.')
      end

      if @policy_name.nil?
        invalid_properties.push('invalid value for "policy_name", policy_name cannot be nil.')
      end

      if @protocol.nil?
        invalid_properties.push('invalid value for "protocol", protocol cannot be nil.')
      end

      if @remote_address.nil?
        invalid_properties.push('invalid value for "remote_address", remote_address cannot be nil.')
      end

      if @remote_port.nil?
        invalid_properties.push('invalid value for "remote_port", remote_port cannot be nil.')
      end

      if @rule_action.nil?
        invalid_properties.push('invalid value for "rule_action", rule_action cannot be nil.')
      end

      if @rule_description.nil?
        invalid_properties.push('invalid value for "rule_description", rule_description cannot be nil.')
      end

      if @rule_family_id.nil?
        invalid_properties.push('invalid value for "rule_family_id", rule_family_id cannot be nil.')
      end

      if @rule_group_name.nil?
        invalid_properties.push('invalid value for "rule_group_name", rule_group_name cannot be nil.')
      end

      if @rule_id.nil?
        invalid_properties.push('invalid value for "rule_id", rule_id cannot be nil.')
      end

      if @rule_name.nil?
        invalid_properties.push('invalid value for "rule_name", rule_name cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @timestamp.nil?
        invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
      end

      if @tree_id.nil?
        invalid_properties.push('invalid value for "tree_id", tree_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @aid.nil?
      return false if @cid.nil?
      return false if @command_line.nil?
      return false if @connection_direction.nil?
      return false if @event_type.nil?
      return false if @flags.nil?
      return false if @hidden.nil?
      return false if @host_name.nil?
      return false if @icmp_code.nil?
      return false if @icmp_type.nil?
      return false if @id.nil?
      return false if @image_file_name.nil?
      return false if @ipv.nil?
      return false if @local_address.nil?
      return false if @local_port.nil?
      return false if @match_count.nil?
      return false if @match_count_since_last_event.nil?
      return false if @network_profile.nil?
      return false if @pid.nil?
      return false if @policy_id.nil?
      return false if @policy_name.nil?
      return false if @protocol.nil?
      return false if @remote_address.nil?
      return false if @remote_port.nil?
      return false if @rule_action.nil?
      return false if @rule_description.nil?
      return false if @rule_family_id.nil?
      return false if @rule_group_name.nil?
      return false if @rule_id.nil?
      return false if @rule_name.nil?
      return false if @status.nil?
      return false if @timestamp.nil?
      return false if @tree_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aid == o.aid &&
          cid == o.cid &&
          command_line == o.command_line &&
          connection_direction == o.connection_direction &&
          event_type == o.event_type &&
          flags == o.flags &&
          hidden == o.hidden &&
          host_name == o.host_name &&
          icmp_code == o.icmp_code &&
          icmp_type == o.icmp_type &&
          id == o.id &&
          image_file_name == o.image_file_name &&
          ipv == o.ipv &&
          local_address == o.local_address &&
          local_port == o.local_port &&
          match_count == o.match_count &&
          match_count_since_last_event == o.match_count_since_last_event &&
          network_profile == o.network_profile &&
          pid == o.pid &&
          policy_id == o.policy_id &&
          policy_name == o.policy_name &&
          protocol == o.protocol &&
          remote_address == o.remote_address &&
          remote_port == o.remote_port &&
          rule_action == o.rule_action &&
          rule_description == o.rule_description &&
          rule_family_id == o.rule_family_id &&
          rule_group_name == o.rule_group_name &&
          rule_id == o.rule_id &&
          rule_name == o.rule_name &&
          status == o.status &&
          timestamp == o.timestamp &&
          tree_id == o.tree_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [aid, cid, command_line, connection_direction, event_type, flags, hidden, host_name, icmp_code, icmp_type, id, image_file_name, ipv, local_address, local_port, match_count, match_count_since_last_event, network_profile, pid, policy_id, policy_name, protocol, remote_address, remote_port, rule_action, rule_description, rule_family_id, rule_group_name, rule_id, rule_name, status, timestamp, tree_id].hash
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
