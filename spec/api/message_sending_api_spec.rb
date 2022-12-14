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

# Unit tests for OpenapiClient::MessageSendingApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MessageSendingApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::MessageSendingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessageSendingApi' do
    it 'should create an instance of MessageSendingApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::MessageSendingApi)
    end
  end

  # unit tests for instances_instance_key_business_catalog_get
  # Fetches the catlog.
  # Gets list of all products registered by you.
  # @param instance_key Instance key
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_business_catalog_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_audio_post
  # Send raw audio.
  # Sends a audio message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
  # @param instance_key Instance key
  # @param to The recipient&#39;s number
  # @param instances_instance_key_send_audio_post_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :caption Attached caption
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_audio_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_button_media_post
  # Send a button message with a media header.
  # Sends an interactive button message to the given user. This message also has media header with it. Make sure that all the button ids are unique
  # @param instance_key Instance key
  # @param data Message data
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_button_media_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_buttons_post
  # Send a button message.
  # Sends an interactive button message to the given user. Make sure that all the button ids are unique
  # @param instance_key Instance key
  # @param data Message data
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_buttons_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_contact_post
  # Send a contact message.
  # Sends a contact (vcard) message to the given user.
  # @param instance_key Instance key
  # @param data Message data
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_contact_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_document_post
  # Send raw document.
  # Sends a document message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
  # @param instance_key Instance key
  # @param to The recipient&#39;s number
  # @param instances_instance_key_send_document_post_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :caption Attached caption
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_document_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_image_post
  # Send raw image.
  # Sends a image message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
  # @param instance_key Instance key
  # @param to The recipient&#39;s number
  # @param instances_instance_key_send_image_post_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :caption Attached caption
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_image_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_list_post
  # Send a List message.
  # Sends an interactive List message to the given user.
  # @param instance_key Instance key
  # @param data Message data
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_list_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_location_post
  # Send a location message.
  # Sends a location message to the given user. This is static location and does not update Note: The Address and Url fields are optional
  # @param instance_key Instance key
  # @param data Message data
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_location_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_media_post
  # Send a media message.
  # Sends a media message to the given user.
  # @param instance_key Instance key
  # @param data Message data
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_media_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_poll_post
  # Send a Poll message with media.
  # Sends an interactive poll message with a media header to the given user. The poll message is a new feature that is currently in beta.
  # @param instance_key Instance key
  # @param data Message data
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_poll_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_template_media_post
  # Send a template message with media.
  # Sends an interactive template message with a media header to the given user. Note: The valid button types are \&quot;replyButton\&quot;, \&quot;urlButton\&quot;, \&quot;callButton\&quot;
  # @param instance_key Instance key
  # @param data Message data
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_template_media_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_template_post
  # Send a template message.
  # Sends an interactive template message to the given user. Note: The valid button types are \&quot;replyButton\&quot;, \&quot;urlButton\&quot;, \&quot;callButton\&quot;
  # @param instance_key Instance key
  # @param data Message data
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_template_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_text_post
  # Send a text message.
  # Sends a text message to the given user.
  # @param instance_key Instance key
  # @param data Message data
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_text_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_upload_post
  # Upload media.
  # Uploads media to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages
  # @param instance_key Instance key
  # @param type Media type
  # @param instances_instance_key_send_upload_post_request 
  # @param [Hash] opts the optional parameters
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_upload_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for instances_instance_key_send_video_post
  # Send raw video.
  # Sends a video message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.
  # @param instance_key Instance key
  # @param to The recipient&#39;s number
  # @param instances_instance_key_send_video_post_request 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :caption Attached caption
  # @return [MainAPIResponse]
  describe 'instances_instance_key_send_video_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
