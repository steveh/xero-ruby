=begin
#Xero Payroll UK

#This is the Xero Payroll API for orgs in the UK region.

The version of the OpenAPI document: 2.3.7
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for XeroRuby::PayrollUk::Employment
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'Employment' do
  before do
    # run before each test
    @instance = XeroRuby::PayrollUk::Employment.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of Employment' do
    it 'should create an instance of Employment' do
      expect(@instance).to be_instance_of(XeroRuby::PayrollUk::Employment)
    end
  end
  describe 'test attribute "payroll_calendar_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "start_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "employee_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "ni_category"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["A", "B", "C", "H", "J", "M", "Z", "X"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.ni_category = value }.not_to raise_error
      # end
    end
  end

end
