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

# Unit tests for XeroRuby::PayrollUk::LeaveAccrualLine
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LeaveAccrualLine' do
  before do
    # run before each test
    @instance = XeroRuby::PayrollUk::LeaveAccrualLine.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LeaveAccrualLine' do
    it 'should create an instance of LeaveAccrualLine' do
      expect(@instance).to be_instance_of(XeroRuby::PayrollUk::LeaveAccrualLine)
    end
  end
  describe 'test attribute "leave_type_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "number_of_units"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
