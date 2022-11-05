=begin
#WhatsAPI Go

#The V2 of WhatsAPI Go

The version of the OpenAPI document: 2.0
Contact: manjit@sponsorbook.io
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::BusinessManagementApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BusinessManagementApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::BusinessManagementApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BusinessManagementApi' do
    it 'should create an instance of BusinessManagementApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::BusinessManagementApi)
    end
  end

  # unit tests for instances_instance_key_business_catalog_get
  # Fetches the catlog.
  # Gets list of all products registered by you.
  # @param instance_key Instance key
  # @param [Hash] opts the optional parameters
  # @return [APIResponse]
  describe 'instances_instance_key_business_catalog_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
