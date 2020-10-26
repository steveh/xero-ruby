=begin
#Xero Payroll NZ

#This is the Xero Payroll API for orgs in the NZ region.

The version of the OpenAPI document: 2.3.7
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for XeroRuby::PayrollNz::PaymentMethod
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PaymentMethod' do
  before do
    # run before each test
    @instance = XeroRuby::PayrollNz::PaymentMethod.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PaymentMethod' do
    it 'should create an instance of PaymentMethod' do
      expect(@instance).to be_instance_of(XeroRuby::PayrollNz::PaymentMethod)
    end
  end
  describe 'test attribute "payment_method"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Cheque", "Electronically", "Manual"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.payment_method = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "bank_accounts"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
