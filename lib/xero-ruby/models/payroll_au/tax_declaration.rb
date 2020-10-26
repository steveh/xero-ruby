=begin
#Xero Payroll AU

#This is the Xero Payroll API for orgs in Australia region.

The version of the OpenAPI document: 2.3.7
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollAu
  require 'bigdecimal'

  class TaxDeclaration
    # Address line 1 for employee home address
    attr_accessor :employee_id
    

    attr_accessor :employment_basis
    

    attr_accessor :tfn_exemption_type
    
    # The tax file number e.g 123123123.
    attr_accessor :tax_file_number
    
    # If the employee is Australian resident for tax purposes. e.g true or false
    attr_accessor :australian_resident_for_tax_purposes
    

    attr_accessor :residency_status
    
    # If tax free threshold claimed. e.g true or false
    attr_accessor :tax_free_threshold_claimed
    
    # If has tax offset estimated then the tax offset estimated amount. e.g 100
    attr_accessor :tax_offset_estimated_amount
    
    # If employee has HECS or HELP debt. e.g true or false
    attr_accessor :has_help_debt
    
    # If employee has financial supplement debt. e.g true or false
    attr_accessor :has_sfss_debt
    
    # If employee has trade support loan. e.g true or false
    attr_accessor :has_trade_support_loan_debt
    
    # If the employee has requested that additional tax be withheld each pay run. e.g 50
    attr_accessor :upward_variation_tax_withholding_amount
    
    # If the employee is eligible to receive an additional percentage on top of ordinary earnings when they take leave (typically 17.5%). e.g true or false
    attr_accessor :eligible_to_receive_leave_loading
    
    # If the employee has approved withholding variation. e.g (0 - 100)
    attr_accessor :approved_withholding_variation_percentage
    
    # If the employee is eligible for student startup loan rules
    attr_accessor :has_student_startup_loan
    
    # Last modified timestamp
    attr_accessor :updated_date_utc
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'employee_id' => :'EmployeeID',
        :'employment_basis' => :'EmploymentBasis',
        :'tfn_exemption_type' => :'TFNExemptionType',
        :'tax_file_number' => :'TaxFileNumber',
        :'australian_resident_for_tax_purposes' => :'AustralianResidentForTaxPurposes',
        :'residency_status' => :'ResidencyStatus',
        :'tax_free_threshold_claimed' => :'TaxFreeThresholdClaimed',
        :'tax_offset_estimated_amount' => :'TaxOffsetEstimatedAmount',
        :'has_help_debt' => :'HasHELPDebt',
        :'has_sfss_debt' => :'HasSFSSDebt',
        :'has_trade_support_loan_debt' => :'HasTradeSupportLoanDebt',
        :'upward_variation_tax_withholding_amount' => :'UpwardVariationTaxWithholdingAmount',
        :'eligible_to_receive_leave_loading' => :'EligibleToReceiveLeaveLoading',
        :'approved_withholding_variation_percentage' => :'ApprovedWithholdingVariationPercentage',
        :'has_student_startup_loan' => :'HasStudentStartupLoan',
        :'updated_date_utc' => :'UpdatedDateUTC'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'employee_id' => :'String',
        :'employment_basis' => :'EmploymentBasis',
        :'tfn_exemption_type' => :'TFNExemptionType',
        :'tax_file_number' => :'String',
        :'australian_resident_for_tax_purposes' => :'Boolean',
        :'residency_status' => :'ResidencyStatus',
        :'tax_free_threshold_claimed' => :'Boolean',
        :'tax_offset_estimated_amount' => :'Float',
        :'has_help_debt' => :'Boolean',
        :'has_sfss_debt' => :'Boolean',
        :'has_trade_support_loan_debt' => :'Boolean',
        :'upward_variation_tax_withholding_amount' => :'Float',
        :'eligible_to_receive_leave_loading' => :'Boolean',
        :'approved_withholding_variation_percentage' => :'Float',
        :'has_student_startup_loan' => :'Boolean',
        :'updated_date_utc' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::PayrollAu::TaxDeclaration` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::PayrollAu::TaxDeclaration`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'employee_id')
        self.employee_id = attributes[:'employee_id']
      end

      if attributes.key?(:'employment_basis')
        self.employment_basis = attributes[:'employment_basis']
      end

      if attributes.key?(:'tfn_exemption_type')
        self.tfn_exemption_type = attributes[:'tfn_exemption_type']
      end

      if attributes.key?(:'tax_file_number')
        self.tax_file_number = attributes[:'tax_file_number']
      end

      if attributes.key?(:'australian_resident_for_tax_purposes')
        self.australian_resident_for_tax_purposes = attributes[:'australian_resident_for_tax_purposes']
      end

      if attributes.key?(:'residency_status')
        self.residency_status = attributes[:'residency_status']
      end

      if attributes.key?(:'tax_free_threshold_claimed')
        self.tax_free_threshold_claimed = attributes[:'tax_free_threshold_claimed']
      end

      if attributes.key?(:'tax_offset_estimated_amount')
        self.tax_offset_estimated_amount = attributes[:'tax_offset_estimated_amount']
      end

      if attributes.key?(:'has_help_debt')
        self.has_help_debt = attributes[:'has_help_debt']
      end

      if attributes.key?(:'has_sfss_debt')
        self.has_sfss_debt = attributes[:'has_sfss_debt']
      end

      if attributes.key?(:'has_trade_support_loan_debt')
        self.has_trade_support_loan_debt = attributes[:'has_trade_support_loan_debt']
      end

      if attributes.key?(:'upward_variation_tax_withholding_amount')
        self.upward_variation_tax_withholding_amount = attributes[:'upward_variation_tax_withholding_amount']
      end

      if attributes.key?(:'eligible_to_receive_leave_loading')
        self.eligible_to_receive_leave_loading = attributes[:'eligible_to_receive_leave_loading']
      end

      if attributes.key?(:'approved_withholding_variation_percentage')
        self.approved_withholding_variation_percentage = attributes[:'approved_withholding_variation_percentage']
      end

      if attributes.key?(:'has_student_startup_loan')
        self.has_student_startup_loan = attributes[:'has_student_startup_loan']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
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
          employee_id == o.employee_id &&
          employment_basis == o.employment_basis &&
          tfn_exemption_type == o.tfn_exemption_type &&
          tax_file_number == o.tax_file_number &&
          australian_resident_for_tax_purposes == o.australian_resident_for_tax_purposes &&
          residency_status == o.residency_status &&
          tax_free_threshold_claimed == o.tax_free_threshold_claimed &&
          tax_offset_estimated_amount == o.tax_offset_estimated_amount &&
          has_help_debt == o.has_help_debt &&
          has_sfss_debt == o.has_sfss_debt &&
          has_trade_support_loan_debt == o.has_trade_support_loan_debt &&
          upward_variation_tax_withholding_amount == o.upward_variation_tax_withholding_amount &&
          eligible_to_receive_leave_loading == o.eligible_to_receive_leave_loading &&
          approved_withholding_variation_percentage == o.approved_withholding_variation_percentage &&
          has_student_startup_loan == o.has_student_startup_loan &&
          updated_date_utc == o.updated_date_utc
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [employee_id, employment_basis, tfn_exemption_type, tax_file_number, australian_resident_for_tax_purposes, residency_status, tax_free_threshold_claimed, tax_offset_estimated_amount, has_help_debt, has_sfss_debt, has_trade_support_loan_debt, upward_variation_tax_withholding_amount, eligible_to_receive_leave_loading, approved_withholding_variation_percentage, has_student_startup_loan, updated_date_utc].hash
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
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
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

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).strftime('%Y-%m-%dT%l:%M:%S%z').to_s
    end
  end
end
