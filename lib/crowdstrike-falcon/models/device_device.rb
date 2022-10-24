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
  class DeviceDevice
    attr_accessor :agent_load_flags

    attr_accessor :agent_local_time

    attr_accessor :agent_version

    attr_accessor :bios_manufacturer

    attr_accessor :bios_version

    attr_accessor :build_number

    attr_accessor :cid

    attr_accessor :config_id_base

    attr_accessor :config_id_build

    attr_accessor :config_id_platform

    attr_accessor :cpu_signature

    attr_accessor :detection_suppression_status

    attr_accessor :device_id

    attr_accessor :device_policies

    attr_accessor :email

    attr_accessor :external_ip

    attr_accessor :first_login_timestamp

    attr_accessor :first_login_user

    attr_accessor :first_seen

    attr_accessor :group_hash

    attr_accessor :groups

    attr_accessor :host_hidden_status

    attr_accessor :hostname

    attr_accessor :instance_id

    attr_accessor :last_login_timestamp

    attr_accessor :last_login_user

    attr_accessor :last_seen

    attr_accessor :local_ip

    attr_accessor :mac_address

    attr_accessor :machine_domain

    attr_accessor :major_version

    attr_accessor :managed_apps

    attr_accessor :meta

    attr_accessor :minor_version

    attr_accessor :modified_timestamp

    attr_accessor :notes

    attr_accessor :os_build

    attr_accessor :os_version

    attr_accessor :ou

    attr_accessor :platform_id

    attr_accessor :platform_name

    attr_accessor :pod_annotations

    attr_accessor :pod_host_ip4

    attr_accessor :pod_host_ip6

    attr_accessor :pod_hostname

    attr_accessor :pod_id

    attr_accessor :pod_ip4

    attr_accessor :pod_ip6

    attr_accessor :pod_labels

    attr_accessor :pod_name

    attr_accessor :pod_namespace

    attr_accessor :pod_service_account_name

    attr_accessor :pointer_size

    attr_accessor :policies

    attr_accessor :product_type

    attr_accessor :product_type_desc

    attr_accessor :provision_status

    attr_accessor :reduced_functionality_mode

    attr_accessor :release_group

    attr_accessor :serial_number

    attr_accessor :service_pack_major

    attr_accessor :service_pack_minor

    attr_accessor :service_provider

    attr_accessor :service_provider_account_id

    attr_accessor :site_name

    attr_accessor :slow_changing_modified_timestamp

    attr_accessor :status

    attr_accessor :system_manufacturer

    attr_accessor :system_product_name

    attr_accessor :tags

    attr_accessor :zone_group

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'agent_load_flags' => :'agent_load_flags',
        :'agent_local_time' => :'agent_local_time',
        :'agent_version' => :'agent_version',
        :'bios_manufacturer' => :'bios_manufacturer',
        :'bios_version' => :'bios_version',
        :'build_number' => :'build_number',
        :'cid' => :'cid',
        :'config_id_base' => :'config_id_base',
        :'config_id_build' => :'config_id_build',
        :'config_id_platform' => :'config_id_platform',
        :'cpu_signature' => :'cpu_signature',
        :'detection_suppression_status' => :'detection_suppression_status',
        :'device_id' => :'device_id',
        :'device_policies' => :'device_policies',
        :'email' => :'email',
        :'external_ip' => :'external_ip',
        :'first_login_timestamp' => :'first_login_timestamp',
        :'first_login_user' => :'first_login_user',
        :'first_seen' => :'first_seen',
        :'group_hash' => :'group_hash',
        :'groups' => :'groups',
        :'host_hidden_status' => :'host_hidden_status',
        :'hostname' => :'hostname',
        :'instance_id' => :'instance_id',
        :'last_login_timestamp' => :'last_login_timestamp',
        :'last_login_user' => :'last_login_user',
        :'last_seen' => :'last_seen',
        :'local_ip' => :'local_ip',
        :'mac_address' => :'mac_address',
        :'machine_domain' => :'machine_domain',
        :'major_version' => :'major_version',
        :'managed_apps' => :'managed_apps',
        :'meta' => :'meta',
        :'minor_version' => :'minor_version',
        :'modified_timestamp' => :'modified_timestamp',
        :'notes' => :'notes',
        :'os_build' => :'os_build',
        :'os_version' => :'os_version',
        :'ou' => :'ou',
        :'platform_id' => :'platform_id',
        :'platform_name' => :'platform_name',
        :'pod_annotations' => :'pod_annotations',
        :'pod_host_ip4' => :'pod_host_ip4',
        :'pod_host_ip6' => :'pod_host_ip6',
        :'pod_hostname' => :'pod_hostname',
        :'pod_id' => :'pod_id',
        :'pod_ip4' => :'pod_ip4',
        :'pod_ip6' => :'pod_ip6',
        :'pod_labels' => :'pod_labels',
        :'pod_name' => :'pod_name',
        :'pod_namespace' => :'pod_namespace',
        :'pod_service_account_name' => :'pod_service_account_name',
        :'pointer_size' => :'pointer_size',
        :'policies' => :'policies',
        :'product_type' => :'product_type',
        :'product_type_desc' => :'product_type_desc',
        :'provision_status' => :'provision_status',
        :'reduced_functionality_mode' => :'reduced_functionality_mode',
        :'release_group' => :'release_group',
        :'serial_number' => :'serial_number',
        :'service_pack_major' => :'service_pack_major',
        :'service_pack_minor' => :'service_pack_minor',
        :'service_provider' => :'service_provider',
        :'service_provider_account_id' => :'service_provider_account_id',
        :'site_name' => :'site_name',
        :'slow_changing_modified_timestamp' => :'slow_changing_modified_timestamp',
        :'status' => :'status',
        :'system_manufacturer' => :'system_manufacturer',
        :'system_product_name' => :'system_product_name',
        :'tags' => :'tags',
        :'zone_group' => :'zone_group'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'agent_load_flags' => :'String',
        :'agent_local_time' => :'String',
        :'agent_version' => :'String',
        :'bios_manufacturer' => :'String',
        :'bios_version' => :'String',
        :'build_number' => :'String',
        :'cid' => :'String',
        :'config_id_base' => :'String',
        :'config_id_build' => :'String',
        :'config_id_platform' => :'String',
        :'cpu_signature' => :'String',
        :'detection_suppression_status' => :'String',
        :'device_id' => :'String',
        :'device_policies' => :'DeviceMappedDevicePolicies',
        :'email' => :'String',
        :'external_ip' => :'String',
        :'first_login_timestamp' => :'String',
        :'first_login_user' => :'String',
        :'first_seen' => :'String',
        :'group_hash' => :'String',
        :'groups' => :'Array<String>',
        :'host_hidden_status' => :'String',
        :'hostname' => :'String',
        :'instance_id' => :'String',
        :'last_login_timestamp' => :'String',
        :'last_login_user' => :'String',
        :'last_seen' => :'String',
        :'local_ip' => :'String',
        :'mac_address' => :'String',
        :'machine_domain' => :'String',
        :'major_version' => :'String',
        :'managed_apps' => :'DeviceManagedApps',
        :'meta' => :'DeviceDeviceMeta',
        :'minor_version' => :'String',
        :'modified_timestamp' => :'String',
        :'notes' => :'Array<String>',
        :'os_build' => :'String',
        :'os_version' => :'String',
        :'ou' => :'Array<String>',
        :'platform_id' => :'String',
        :'platform_name' => :'String',
        :'pod_annotations' => :'Array<String>',
        :'pod_host_ip4' => :'String',
        :'pod_host_ip6' => :'String',
        :'pod_hostname' => :'String',
        :'pod_id' => :'String',
        :'pod_ip4' => :'String',
        :'pod_ip6' => :'String',
        :'pod_labels' => :'Array<String>',
        :'pod_name' => :'String',
        :'pod_namespace' => :'String',
        :'pod_service_account_name' => :'String',
        :'pointer_size' => :'String',
        :'policies' => :'Array<DeviceDevicePolicy>',
        :'product_type' => :'String',
        :'product_type_desc' => :'String',
        :'provision_status' => :'String',
        :'reduced_functionality_mode' => :'String',
        :'release_group' => :'String',
        :'serial_number' => :'String',
        :'service_pack_major' => :'String',
        :'service_pack_minor' => :'String',
        :'service_provider' => :'String',
        :'service_provider_account_id' => :'String',
        :'site_name' => :'String',
        :'slow_changing_modified_timestamp' => :'String',
        :'status' => :'String',
        :'system_manufacturer' => :'String',
        :'system_product_name' => :'String',
        :'tags' => :'Array<String>',
        :'zone_group' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Falcon::DeviceDevice` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Falcon::DeviceDevice`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'agent_load_flags')
        self.agent_load_flags = attributes[:'agent_load_flags']
      end

      if attributes.key?(:'agent_local_time')
        self.agent_local_time = attributes[:'agent_local_time']
      end

      if attributes.key?(:'agent_version')
        self.agent_version = attributes[:'agent_version']
      end

      if attributes.key?(:'bios_manufacturer')
        self.bios_manufacturer = attributes[:'bios_manufacturer']
      end

      if attributes.key?(:'bios_version')
        self.bios_version = attributes[:'bios_version']
      end

      if attributes.key?(:'build_number')
        self.build_number = attributes[:'build_number']
      end

      if attributes.key?(:'cid')
        self.cid = attributes[:'cid']
      end

      if attributes.key?(:'config_id_base')
        self.config_id_base = attributes[:'config_id_base']
      end

      if attributes.key?(:'config_id_build')
        self.config_id_build = attributes[:'config_id_build']
      end

      if attributes.key?(:'config_id_platform')
        self.config_id_platform = attributes[:'config_id_platform']
      end

      if attributes.key?(:'cpu_signature')
        self.cpu_signature = attributes[:'cpu_signature']
      end

      if attributes.key?(:'detection_suppression_status')
        self.detection_suppression_status = attributes[:'detection_suppression_status']
      end

      if attributes.key?(:'device_id')
        self.device_id = attributes[:'device_id']
      end

      if attributes.key?(:'device_policies')
        self.device_policies = attributes[:'device_policies']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'external_ip')
        self.external_ip = attributes[:'external_ip']
      end

      if attributes.key?(:'first_login_timestamp')
        self.first_login_timestamp = attributes[:'first_login_timestamp']
      end

      if attributes.key?(:'first_login_user')
        self.first_login_user = attributes[:'first_login_user']
      end

      if attributes.key?(:'first_seen')
        self.first_seen = attributes[:'first_seen']
      end

      if attributes.key?(:'group_hash')
        self.group_hash = attributes[:'group_hash']
      end

      if attributes.key?(:'groups')
        if (value = attributes[:'groups']).is_a?(Array)
          self.groups = value
        end
      end

      if attributes.key?(:'host_hidden_status')
        self.host_hidden_status = attributes[:'host_hidden_status']
      end

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.key?(:'instance_id')
        self.instance_id = attributes[:'instance_id']
      end

      if attributes.key?(:'last_login_timestamp')
        self.last_login_timestamp = attributes[:'last_login_timestamp']
      end

      if attributes.key?(:'last_login_user')
        self.last_login_user = attributes[:'last_login_user']
      end

      if attributes.key?(:'last_seen')
        self.last_seen = attributes[:'last_seen']
      end

      if attributes.key?(:'local_ip')
        self.local_ip = attributes[:'local_ip']
      end

      if attributes.key?(:'mac_address')
        self.mac_address = attributes[:'mac_address']
      end

      if attributes.key?(:'machine_domain')
        self.machine_domain = attributes[:'machine_domain']
      end

      if attributes.key?(:'major_version')
        self.major_version = attributes[:'major_version']
      end

      if attributes.key?(:'managed_apps')
        self.managed_apps = attributes[:'managed_apps']
      end

      if attributes.key?(:'meta')
        self.meta = attributes[:'meta']
      end

      if attributes.key?(:'minor_version')
        self.minor_version = attributes[:'minor_version']
      end

      if attributes.key?(:'modified_timestamp')
        self.modified_timestamp = attributes[:'modified_timestamp']
      end

      if attributes.key?(:'notes')
        if (value = attributes[:'notes']).is_a?(Array)
          self.notes = value
        end
      end

      if attributes.key?(:'os_build')
        self.os_build = attributes[:'os_build']
      end

      if attributes.key?(:'os_version')
        self.os_version = attributes[:'os_version']
      end

      if attributes.key?(:'ou')
        if (value = attributes[:'ou']).is_a?(Array)
          self.ou = value
        end
      end

      if attributes.key?(:'platform_id')
        self.platform_id = attributes[:'platform_id']
      end

      if attributes.key?(:'platform_name')
        self.platform_name = attributes[:'platform_name']
      end

      if attributes.key?(:'pod_annotations')
        if (value = attributes[:'pod_annotations']).is_a?(Array)
          self.pod_annotations = value
        end
      end

      if attributes.key?(:'pod_host_ip4')
        self.pod_host_ip4 = attributes[:'pod_host_ip4']
      end

      if attributes.key?(:'pod_host_ip6')
        self.pod_host_ip6 = attributes[:'pod_host_ip6']
      end

      if attributes.key?(:'pod_hostname')
        self.pod_hostname = attributes[:'pod_hostname']
      end

      if attributes.key?(:'pod_id')
        self.pod_id = attributes[:'pod_id']
      end

      if attributes.key?(:'pod_ip4')
        self.pod_ip4 = attributes[:'pod_ip4']
      end

      if attributes.key?(:'pod_ip6')
        self.pod_ip6 = attributes[:'pod_ip6']
      end

      if attributes.key?(:'pod_labels')
        if (value = attributes[:'pod_labels']).is_a?(Array)
          self.pod_labels = value
        end
      end

      if attributes.key?(:'pod_name')
        self.pod_name = attributes[:'pod_name']
      end

      if attributes.key?(:'pod_namespace')
        self.pod_namespace = attributes[:'pod_namespace']
      end

      if attributes.key?(:'pod_service_account_name')
        self.pod_service_account_name = attributes[:'pod_service_account_name']
      end

      if attributes.key?(:'pointer_size')
        self.pointer_size = attributes[:'pointer_size']
      end

      if attributes.key?(:'policies')
        if (value = attributes[:'policies']).is_a?(Array)
          self.policies = value
        end
      end

      if attributes.key?(:'product_type')
        self.product_type = attributes[:'product_type']
      end

      if attributes.key?(:'product_type_desc')
        self.product_type_desc = attributes[:'product_type_desc']
      end

      if attributes.key?(:'provision_status')
        self.provision_status = attributes[:'provision_status']
      end

      if attributes.key?(:'reduced_functionality_mode')
        self.reduced_functionality_mode = attributes[:'reduced_functionality_mode']
      end

      if attributes.key?(:'release_group')
        self.release_group = attributes[:'release_group']
      end

      if attributes.key?(:'serial_number')
        self.serial_number = attributes[:'serial_number']
      end

      if attributes.key?(:'service_pack_major')
        self.service_pack_major = attributes[:'service_pack_major']
      end

      if attributes.key?(:'service_pack_minor')
        self.service_pack_minor = attributes[:'service_pack_minor']
      end

      if attributes.key?(:'service_provider')
        self.service_provider = attributes[:'service_provider']
      end

      if attributes.key?(:'service_provider_account_id')
        self.service_provider_account_id = attributes[:'service_provider_account_id']
      end

      if attributes.key?(:'site_name')
        self.site_name = attributes[:'site_name']
      end

      if attributes.key?(:'slow_changing_modified_timestamp')
        self.slow_changing_modified_timestamp = attributes[:'slow_changing_modified_timestamp']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'system_manufacturer')
        self.system_manufacturer = attributes[:'system_manufacturer']
      end

      if attributes.key?(:'system_product_name')
        self.system_product_name = attributes[:'system_product_name']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'zone_group')
        self.zone_group = attributes[:'zone_group']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @cid.nil?
        invalid_properties.push('invalid value for "cid", cid cannot be nil.')
      end

      if @device_id.nil?
        invalid_properties.push('invalid value for "device_id", device_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cid.nil?
      return false if @device_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          agent_load_flags == o.agent_load_flags &&
          agent_local_time == o.agent_local_time &&
          agent_version == o.agent_version &&
          bios_manufacturer == o.bios_manufacturer &&
          bios_version == o.bios_version &&
          build_number == o.build_number &&
          cid == o.cid &&
          config_id_base == o.config_id_base &&
          config_id_build == o.config_id_build &&
          config_id_platform == o.config_id_platform &&
          cpu_signature == o.cpu_signature &&
          detection_suppression_status == o.detection_suppression_status &&
          device_id == o.device_id &&
          device_policies == o.device_policies &&
          email == o.email &&
          external_ip == o.external_ip &&
          first_login_timestamp == o.first_login_timestamp &&
          first_login_user == o.first_login_user &&
          first_seen == o.first_seen &&
          group_hash == o.group_hash &&
          groups == o.groups &&
          host_hidden_status == o.host_hidden_status &&
          hostname == o.hostname &&
          instance_id == o.instance_id &&
          last_login_timestamp == o.last_login_timestamp &&
          last_login_user == o.last_login_user &&
          last_seen == o.last_seen &&
          local_ip == o.local_ip &&
          mac_address == o.mac_address &&
          machine_domain == o.machine_domain &&
          major_version == o.major_version &&
          managed_apps == o.managed_apps &&
          meta == o.meta &&
          minor_version == o.minor_version &&
          modified_timestamp == o.modified_timestamp &&
          notes == o.notes &&
          os_build == o.os_build &&
          os_version == o.os_version &&
          ou == o.ou &&
          platform_id == o.platform_id &&
          platform_name == o.platform_name &&
          pod_annotations == o.pod_annotations &&
          pod_host_ip4 == o.pod_host_ip4 &&
          pod_host_ip6 == o.pod_host_ip6 &&
          pod_hostname == o.pod_hostname &&
          pod_id == o.pod_id &&
          pod_ip4 == o.pod_ip4 &&
          pod_ip6 == o.pod_ip6 &&
          pod_labels == o.pod_labels &&
          pod_name == o.pod_name &&
          pod_namespace == o.pod_namespace &&
          pod_service_account_name == o.pod_service_account_name &&
          pointer_size == o.pointer_size &&
          policies == o.policies &&
          product_type == o.product_type &&
          product_type_desc == o.product_type_desc &&
          provision_status == o.provision_status &&
          reduced_functionality_mode == o.reduced_functionality_mode &&
          release_group == o.release_group &&
          serial_number == o.serial_number &&
          service_pack_major == o.service_pack_major &&
          service_pack_minor == o.service_pack_minor &&
          service_provider == o.service_provider &&
          service_provider_account_id == o.service_provider_account_id &&
          site_name == o.site_name &&
          slow_changing_modified_timestamp == o.slow_changing_modified_timestamp &&
          status == o.status &&
          system_manufacturer == o.system_manufacturer &&
          system_product_name == o.system_product_name &&
          tags == o.tags &&
          zone_group == o.zone_group
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [agent_load_flags, agent_local_time, agent_version, bios_manufacturer, bios_version, build_number, cid, config_id_base, config_id_build, config_id_platform, cpu_signature, detection_suppression_status, device_id, device_policies, email, external_ip, first_login_timestamp, first_login_user, first_seen, group_hash, groups, host_hidden_status, hostname, instance_id, last_login_timestamp, last_login_user, last_seen, local_ip, mac_address, machine_domain, major_version, managed_apps, meta, minor_version, modified_timestamp, notes, os_build, os_version, ou, platform_id, platform_name, pod_annotations, pod_host_ip4, pod_host_ip6, pod_hostname, pod_id, pod_ip4, pod_ip6, pod_labels, pod_name, pod_namespace, pod_service_account_name, pointer_size, policies, product_type, product_type_desc, provision_status, reduced_functionality_mode, release_group, serial_number, service_pack_major, service_pack_minor, service_provider, service_provider_account_id, site_name, slow_changing_modified_timestamp, status, system_manufacturer, system_product_name, tags, zone_group].hash
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
