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
  class DetectsInvestigatable
    attr_accessor :agent_id

    attr_accessor :aggregate_id

    attr_accessor :assigned_to_name

    attr_accessor :assigned_to_uid

    attr_accessor :assigned_to_uuid

    attr_accessor :cid

    attr_accessor :composite_id

    attr_accessor :confidence

    attr_accessor :crawl_edge_ids

    attr_accessor :crawl_traversal

    attr_accessor :crawl_vertex_ids

    attr_accessor :created_timestamp

    attr_accessor :description

    attr_accessor :display_name

    attr_accessor :email_sent

    attr_accessor :external

    attr_accessor :id

    attr_accessor :name

    attr_accessor :objective

    attr_accessor :pattern_id

    attr_accessor :product

    attr_accessor :scenario

    attr_accessor :severity

    attr_accessor :show_in_ui

    attr_accessor :status

    attr_accessor :tactic

    attr_accessor :tactic_id

    attr_accessor :tags

    attr_accessor :technique

    attr_accessor :technique_id

    attr_accessor :timestamp

    attr_accessor :type

    attr_accessor :updated_timestamp

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'agent_id' => :'agent_id',
        :'aggregate_id' => :'aggregate_id',
        :'assigned_to_name' => :'assigned_to_name',
        :'assigned_to_uid' => :'assigned_to_uid',
        :'assigned_to_uuid' => :'assigned_to_uuid',
        :'cid' => :'cid',
        :'composite_id' => :'composite_id',
        :'confidence' => :'confidence',
        :'crawl_edge_ids' => :'crawl_edge_ids',
        :'crawl_traversal' => :'crawl_traversal',
        :'crawl_vertex_ids' => :'crawl_vertex_ids',
        :'created_timestamp' => :'created_timestamp',
        :'description' => :'description',
        :'display_name' => :'display_name',
        :'email_sent' => :'email_sent',
        :'external' => :'external',
        :'id' => :'id',
        :'name' => :'name',
        :'objective' => :'objective',
        :'pattern_id' => :'pattern_id',
        :'product' => :'product',
        :'scenario' => :'scenario',
        :'severity' => :'severity',
        :'show_in_ui' => :'show_in_ui',
        :'status' => :'status',
        :'tactic' => :'tactic',
        :'tactic_id' => :'tactic_id',
        :'tags' => :'tags',
        :'technique' => :'technique',
        :'technique_id' => :'technique_id',
        :'timestamp' => :'timestamp',
        :'type' => :'type',
        :'updated_timestamp' => :'updated_timestamp'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'agent_id' => :'String',
        :'aggregate_id' => :'String',
        :'assigned_to_name' => :'String',
        :'assigned_to_uid' => :'String',
        :'assigned_to_uuid' => :'String',
        :'cid' => :'String',
        :'composite_id' => :'String',
        :'confidence' => :'Integer',
        :'crawl_edge_ids' => :'Hash<String, Object>',
        :'crawl_traversal' => :'Array<ThreatgraphCrawlEdgesRequest>',
        :'crawl_vertex_ids' => :'Hash<String, Object>',
        :'created_timestamp' => :'Time',
        :'description' => :'String',
        :'display_name' => :'String',
        :'email_sent' => :'Boolean',
        :'external' => :'Boolean',
        :'id' => :'String',
        :'name' => :'String',
        :'objective' => :'String',
        :'pattern_id' => :'Integer',
        :'product' => :'String',
        :'scenario' => :'String',
        :'severity' => :'Integer',
        :'show_in_ui' => :'Boolean',
        :'status' => :'String',
        :'tactic' => :'String',
        :'tactic_id' => :'String',
        :'tags' => :'Array<String>',
        :'technique' => :'String',
        :'technique_id' => :'String',
        :'timestamp' => :'Time',
        :'type' => :'String',
        :'updated_timestamp' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DetectsInvestigatable` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DetectsInvestigatable`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'agent_id')
        self.agent_id = attributes[:'agent_id']
      end

      if attributes.key?(:'aggregate_id')
        self.aggregate_id = attributes[:'aggregate_id']
      end

      if attributes.key?(:'assigned_to_name')
        self.assigned_to_name = attributes[:'assigned_to_name']
      end

      if attributes.key?(:'assigned_to_uid')
        self.assigned_to_uid = attributes[:'assigned_to_uid']
      end

      if attributes.key?(:'assigned_to_uuid')
        self.assigned_to_uuid = attributes[:'assigned_to_uuid']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'composite_id')
        self.composite_id = attributes[:'composite_id']
      end

      if attributes.key?(:'confidence')
        self.confidence = attributes[:'confidence']
      end

      if attributes.key?(:'crawl_edge_ids')
        if (value = attributes[:'crawl_edge_ids']).is_a?(Hash)
          self.crawl_edge_ids = value
        end
      end

      if attributes.key?(:'crawl_traversal')
        if (value = attributes[:'crawl_traversal']).is_a?(Array)
          self.crawl_traversal = value
        end
      end

      if attributes.key?(:'crawl_vertex_ids')
        if (value = attributes[:'crawl_vertex_ids']).is_a?(Hash)
          self.crawl_vertex_ids = value
        end
      end

      if attributes.key?(:'created_timestamp')
        self.created_timestamp = attributes[:'created_timestamp']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'email_sent')
        self.email_sent = attributes[:'email_sent']
      end

      if attributes.key?(:'external')
        self.external = attributes[:'external']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'objective')
        self.objective = attributes[:'objective']
      end

      if attributes.key?(:'pattern_id')
        self.pattern_id = attributes[:'pattern_id']
      end

      if attributes.key?(:'product')
        self.product = attributes[:'product']
      end

      if attributes.key?(:'scenario')
        self.scenario = attributes[:'scenario']
      end

      if attributes.key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.key?(:'show_in_ui')
        self.show_in_ui = attributes[:'show_in_ui']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tactic')
        self.tactic = attributes[:'tactic']
      end

      if attributes.key?(:'tactic_id')
        self.tactic_id = attributes[:'tactic_id']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'technique')
        self.technique = attributes[:'technique']
      end

      if attributes.key?(:'technique_id')
        self.technique_id = attributes[:'technique_id']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'updated_timestamp')
        self.updated_timestamp = attributes[:'updated_timestamp']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          agent_id == o.agent_id &&
          aggregate_id == o.aggregate_id &&
          assigned_to_name == o.assigned_to_name &&
          assigned_to_uid == o.assigned_to_uid &&
          assigned_to_uuid == o.assigned_to_uuid &&
          cid == o.cid &&
          composite_id == o.composite_id &&
          confidence == o.confidence &&
          crawl_edge_ids == o.crawl_edge_ids &&
          crawl_traversal == o.crawl_traversal &&
          crawl_vertex_ids == o.crawl_vertex_ids &&
          created_timestamp == o.created_timestamp &&
          description == o.description &&
          display_name == o.display_name &&
          email_sent == o.email_sent &&
          external == o.external &&
          id == o.id &&
          name == o.name &&
          objective == o.objective &&
          pattern_id == o.pattern_id &&
          product == o.product &&
          scenario == o.scenario &&
          severity == o.severity &&
          show_in_ui == o.show_in_ui &&
          status == o.status &&
          tactic == o.tactic &&
          tactic_id == o.tactic_id &&
          tags == o.tags &&
          technique == o.technique &&
          technique_id == o.technique_id &&
          timestamp == o.timestamp &&
          type == o.type &&
          updated_timestamp == o.updated_timestamp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [agent_id, aggregate_id, assigned_to_name, assigned_to_uid, assigned_to_uuid, cid, composite_id, confidence, crawl_edge_ids, crawl_traversal, crawl_vertex_ids, created_timestamp, description, display_name, email_sent, external, id, name, objective, pattern_id, product, scenario, severity, show_in_ui, status, tactic, tactic_id, tags, technique, technique_id, timestamp, type, updated_timestamp].hash
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
