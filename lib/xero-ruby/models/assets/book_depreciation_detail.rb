=begin
#Xero Assets API

#The Assets API exposes fixed asset related functions of the Xero Accounting application and can be used for a variety of purposes such as creating assets, retrieving asset valuations etc.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Assets
  require 'bigdecimal'

  class BookDepreciationDetail
    # When an asset is disposed, this will be the sell price minus the purchase price if a profit was made.
    attr_accessor :current_capital_gain
    
    # When an asset is disposed, this will be the lowest one of sell price or purchase price, minus the current book value.
    attr_accessor :current_gain_loss
    
    # YYYY-MM-DD
    attr_accessor :depreciation_start_date
    
    # The value of the asset you want to depreciate, if this is less than the cost of the asset.
    attr_accessor :cost_limit
    
    # The value of the asset remaining when you've fully depreciated it.
    attr_accessor :residual_value
    
    # All depreciation prior to the current financial year.
    attr_accessor :prior_accum_depreciation_amount
    
    # All depreciation occurring in the current financial year.
    attr_accessor :current_accum_depreciation_amount
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'current_capital_gain' => :'currentCapitalGain',
        :'current_gain_loss' => :'currentGainLoss',
        :'depreciation_start_date' => :'depreciationStartDate',
        :'cost_limit' => :'costLimit',
        :'residual_value' => :'residualValue',
        :'prior_accum_depreciation_amount' => :'priorAccumDepreciationAmount',
        :'current_accum_depreciation_amount' => :'currentAccumDepreciationAmount'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'current_capital_gain' => :'BigDecimal',
        :'current_gain_loss' => :'BigDecimal',
        :'depreciation_start_date' => :'Date',
        :'cost_limit' => :'BigDecimal',
        :'residual_value' => :'BigDecimal',
        :'prior_accum_depreciation_amount' => :'BigDecimal',
        :'current_accum_depreciation_amount' => :'BigDecimal'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Assets::BookDepreciationDetail` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Assets::BookDepreciationDetail`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'current_capital_gain')
        self.current_capital_gain = attributes[:'current_capital_gain']
      end

      if attributes.key?(:'current_gain_loss')
        self.current_gain_loss = attributes[:'current_gain_loss']
      end

      if attributes.key?(:'depreciation_start_date')
        self.depreciation_start_date = attributes[:'depreciation_start_date']
      end

      if attributes.key?(:'cost_limit')
        self.cost_limit = attributes[:'cost_limit']
      end

      if attributes.key?(:'residual_value')
        self.residual_value = attributes[:'residual_value']
      end

      if attributes.key?(:'prior_accum_depreciation_amount')
        self.prior_accum_depreciation_amount = attributes[:'prior_accum_depreciation_amount']
      end

      if attributes.key?(:'current_accum_depreciation_amount')
        self.current_accum_depreciation_amount = attributes[:'current_accum_depreciation_amount']
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
          current_capital_gain == o.current_capital_gain &&
          current_gain_loss == o.current_gain_loss &&
          depreciation_start_date == o.depreciation_start_date &&
          cost_limit == o.cost_limit &&
          residual_value == o.residual_value &&
          prior_accum_depreciation_amount == o.prior_accum_depreciation_amount &&
          current_accum_depreciation_amount == o.current_accum_depreciation_amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [current_capital_gain, current_gain_loss, depreciation_start_date, cost_limit, residual_value, prior_accum_depreciation_amount, current_accum_depreciation_amount].hash
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
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
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
        XeroRuby::Assets.const_get(type).build_from_hash(value)
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
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value, downcase: downcase)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def to_attributes
      to_hash(downcase: true)
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value, downcase: false)
      if value.is_a?(Array)
        value.map do |v|
          v.to_hash(downcase: downcase)
        end
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.map { |k, v| hash[k] = _to_hash(v, downcase: downcase) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash(downcase: downcase)
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        date_pattern = /\/Date\((-?\d+)(\+\d+)?\)\//
        original, date, timezone = *date_pattern.match(datestring)
        date = (date.to_i / 1000)
        Time.at(date).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      elsif /(\d\d\d\d)-(\d\d)/.match(datestring) # handles dates w/out Days: YYYY-MM*-DD
        Time.parse(datestring + '-01').strftime('%Y-%m-%dT%H:%M:%S').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
