=begin
#Xero Assets API

#This is the Xero Assets API

The version of the OpenAPI document: 2.3.7
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Assets
  class AssetStatusQueryParam
    DRAFT = "DRAFT".freeze
    REGISTERED = "REGISTERED".freeze
    DISPOSED = "DISPOSED".freeze

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
      constantValues = AssetStatusQueryParam.constants.select { |c| AssetStatusQueryParam::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #AssetStatusQueryParam" if constantValues.empty?
      value
    end
  end
end
