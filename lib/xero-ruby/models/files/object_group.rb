=begin
#Xero Files API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.3.7
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Files
  class ObjectGroup
    ACCOUNT = "Account".freeze
    BANK_TRANSACTION = "BankTransaction".freeze
    CONTACT = "Contact".freeze
    CREDIT_NOTE = "CreditNote".freeze
    INVOICE = "Invoice".freeze
    ITEM = "Item".freeze
    MANUAL_JOURNAL = "ManualJournal".freeze
    OVERPAYMENT = "Overpayment".freeze
    PAYMENT = "Payment".freeze
    PREPAYMENT = "Prepayment".freeze
    RECEIPT = "Receipt".freeze

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
      constantValues = ObjectGroup.constants.select { |c| ObjectGroup::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ObjectGroup" if constantValues.empty?
      value
    end
  end
end
