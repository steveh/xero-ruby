=begin
#Xero Payroll AU API

#This is the Xero Payroll API for orgs in Australia region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'time'
require 'date'

module XeroRuby::PayrollAu
  require 'bigdecimal'

  class SuperannuationLine
    # Xero identifier for payroll super fund membership ID.
    attr_accessor :super_membership_id
    

    attr_accessor :contribution_type
    

    attr_accessor :calculation_type
    
    # Superannuation minimum monthly earnings.
    attr_accessor :minimum_monthly_earnings
    
    # Superannuation expense account code.
    attr_accessor :expense_account_code
    
    # Superannuation liability account code
    attr_accessor :liability_account_code
    
    # Superannuation payment date for the current period (YYYY-MM-DD)
    attr_accessor :payment_date_for_this_period
    
    # Superannuation percentage
    attr_accessor :percentage
    
    # Superannuation amount
    attr_accessor :amount
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'super_membership_id' => :'SuperMembershipID',
        :'contribution_type' => :'ContributionType',
        :'calculation_type' => :'CalculationType',
        :'minimum_monthly_earnings' => :'MinimumMonthlyEarnings',
        :'expense_account_code' => :'ExpenseAccountCode',
        :'liability_account_code' => :'LiabilityAccountCode',
        :'payment_date_for_this_period' => :'PaymentDateForThisPeriod',
        :'percentage' => :'Percentage',
        :'amount' => :'Amount'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'super_membership_id' => :'String',
        :'contribution_type' => :'SuperannuationContributionType',
        :'calculation_type' => :'SuperannuationCalculationType',
        :'minimum_monthly_earnings' => :'BigDecimal',
        :'expense_account_code' => :'String',
        :'liability_account_code' => :'String',
        :'payment_date_for_this_period' => :'Date',
        :'percentage' => :'BigDecimal',
        :'amount' => :'BigDecimal'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollAu::SuperannuationLine` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollAu::SuperannuationLine`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'super_membership_id')
        self.super_membership_id = attributes[:'super_membership_id']
      end

      if attributes.key?(:'contribution_type')
        self.contribution_type = attributes[:'contribution_type']
      end

      if attributes.key?(:'calculation_type')
        self.calculation_type = attributes[:'calculation_type']
      end

      if attributes.key?(:'minimum_monthly_earnings')
        self.minimum_monthly_earnings = attributes[:'minimum_monthly_earnings']
      end

      if attributes.key?(:'expense_account_code')
        self.expense_account_code = attributes[:'expense_account_code']
      end

      if attributes.key?(:'liability_account_code')
        self.liability_account_code = attributes[:'liability_account_code']
      end

      if attributes.key?(:'payment_date_for_this_period')
        self.payment_date_for_this_period = attributes[:'payment_date_for_this_period']
      end

      if attributes.key?(:'percentage')
        self.percentage = attributes[:'percentage']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
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
          super_membership_id == o.super_membership_id &&
          contribution_type == o.contribution_type &&
          calculation_type == o.calculation_type &&
          minimum_monthly_earnings == o.minimum_monthly_earnings &&
          expense_account_code == o.expense_account_code &&
          liability_account_code == o.liability_account_code &&
          payment_date_for_this_period == o.payment_date_for_this_period &&
          percentage == o.percentage &&
          amount == o.amount
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [super_membership_id, contribution_type, calculation_type, minimum_monthly_earnings, expense_account_code, liability_account_code, payment_date_for_this_period, percentage, amount].hash
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
        XeroRuby::PayrollAu.const_get(type).build_from_hash(value)
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
