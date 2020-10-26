=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

The version of the OpenAPI document: 2.3.7
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollNz
  class StatutoryDeductionCategory
    PRIORITY_ORDER = "PriorityOrder".freeze
    NON_PRIORITY_ORDER = "NonPriorityOrder".freeze
    TABLE_BASED = "TableBased".freeze
    CHILD_SUPPORT = "ChildSupport".freeze
    COURT_FINES = "CourtFines".freeze
    INLAND_REVENUE_ARREARS = "InlandRevenueArrears".freeze
    MSD_REPAYMENTS = "MsdRepayments".freeze
    STUDENT_LOAN = "StudentLoan".freeze
    ADDITIONAL_STUDENT_LOAN = "AdditionalStudentLoan".freeze
    VOLUNTARY_STUDENT_LOAN = "VoluntaryStudentLoan".freeze
    KIWI_SAVER = "KiwiSaver".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = StatutoryDeductionCategory.constants.select { |c| StatutoryDeductionCategory::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #StatutoryDeductionCategory" if constantValues.empty?
      value
    end
  end
end
