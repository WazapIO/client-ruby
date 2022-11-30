# openapi_client

OpenapiClient - the Ruby gem for the WhatsAPI Go

The V2 of WhatsAPI Go

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: ApiKeyAuth
  config.api_key['ApiKeyAuth'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['ApiKeyAuth'] = 'Bearer'
end

api_instance = OpenapiClient::BusinessManagementApi.new
instance_key = 'instance_key_example' # String | Instance key

begin
  #Fetches the catlog.
  result = api_instance.fetch_catlog(instance_key)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling BusinessManagementApi->fetch_catlog: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to */api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::BusinessManagementApi* | [**fetch_catlog**](docs/BusinessManagementApi.md#fetch_catlog) | **GET** /instances/{instance_key}/business/catalog | Fetches the catlog.
*OpenapiClient::BusinessManagementApi* | [**send_payment_request**](docs/BusinessManagementApi.md#send_payment_request) | **POST** /instances/{instance_key}/business/payment-request | Send a payment request.
*OpenapiClient::GroupManagementApi* | [**add_participant**](docs/GroupManagementApi.md#add_participant) | **POST** /instances/{instance_key}/groups/{group_id}/participants/add | Add participant.
*OpenapiClient::GroupManagementApi* | [**create_group**](docs/GroupManagementApi.md#create_group) | **POST** /instances/{instance_key}/groups/create | Create group.
*OpenapiClient::GroupManagementApi* | [**demote_participant**](docs/GroupManagementApi.md#demote_participant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/demote | Demote participant.
*OpenapiClient::GroupManagementApi* | [**get_admin_groups**](docs/GroupManagementApi.md#get_admin_groups) | **GET** /instances/{instance_key}/groups/admin | Get admin groups.
*OpenapiClient::GroupManagementApi* | [**get_all_groups**](docs/GroupManagementApi.md#get_all_groups) | **GET** /instances/{instance_key}/groups/ | Get all groups.
*OpenapiClient::GroupManagementApi* | [**get_all_participants**](docs/GroupManagementApi.md#get_all_participants) | **GET** /instances/{instance_key}/groups/{group_id}/participants | Get all participants.
*OpenapiClient::GroupManagementApi* | [**get_group**](docs/GroupManagementApi.md#get_group) | **GET** /instances/{instance_key}/groups/{group_id} | Get group.
*OpenapiClient::GroupManagementApi* | [**get_group_from_invite_link**](docs/GroupManagementApi.md#get_group_from_invite_link) | **GET** /instances/{instance_key}/groups/invite-info | Get group from invite link.
*OpenapiClient::GroupManagementApi* | [**get_group_invite_code**](docs/GroupManagementApi.md#get_group_invite_code) | **GET** /instances/{instance_key}/groups/{group_id}/invite-code | Get group invite code.
*OpenapiClient::GroupManagementApi* | [**join_group_with_link**](docs/GroupManagementApi.md#join_group_with_link) | **GET** /instances/{instance_key}/groups/join | Join group with invite code.
*OpenapiClient::GroupManagementApi* | [**leave_group**](docs/GroupManagementApi.md#leave_group) | **DELETE** /instances/{instance_key}/groups/{group_id}/ | Leaves the group.
*OpenapiClient::GroupManagementApi* | [**promote_participant**](docs/GroupManagementApi.md#promote_participant) | **PUT** /instances/{instance_key}/groups/{group_id}/participants/promote | Promote participant.
*OpenapiClient::GroupManagementApi* | [**remove_participant**](docs/GroupManagementApi.md#remove_participant) | **DELETE** /instances/{instance_key}/groups/{group_id}/participants/remove | Remove participant.
*OpenapiClient::GroupManagementApi* | [**set_group_announce**](docs/GroupManagementApi.md#set_group_announce) | **PUT** /instances/{instance_key}/groups/{group_id}/announce | Set group announce.
*OpenapiClient::GroupManagementApi* | [**set_group_description**](docs/GroupManagementApi.md#set_group_description) | **PUT** /instances/{instance_key}/groups/{group_id}/description | Set group description.
*OpenapiClient::GroupManagementApi* | [**set_group_locked**](docs/GroupManagementApi.md#set_group_locked) | **PUT** /instances/{instance_key}/groups/{group_id}/lock | Set group locked.
*OpenapiClient::GroupManagementApi* | [**set_group_name**](docs/GroupManagementApi.md#set_group_name) | **PUT** /instances/{instance_key}/groups/{group_id}/name | Set group name.
*OpenapiClient::GroupManagementApi* | [**set_group_picture**](docs/GroupManagementApi.md#set_group_picture) | **PUT** /instances/{instance_key}/groups/{group_id}/profile-pic | Set group picture.
*OpenapiClient::InstanceApi* | [**change_webhook_url**](docs/InstanceApi.md#change_webhook_url) | **PUT** /instances/{instance_key}/webhook | Change Webhook url.
*OpenapiClient::InstanceApi* | [**create_instance**](docs/InstanceApi.md#create_instance) | **POST** /instances/create | Creates a new instance key.
*OpenapiClient::InstanceApi* | [**delete_instance**](docs/InstanceApi.md#delete_instance) | **DELETE** /instances/{instance_key}/delete | Delete Instance.
*OpenapiClient::InstanceApi* | [**get_contacts**](docs/InstanceApi.md#get_contacts) | **GET** /instances/{instance_key}/contacts | Get contacts.
*OpenapiClient::InstanceApi* | [**get_instance**](docs/InstanceApi.md#get_instance) | **GET** /instances/{instance_key}/ | Get Instance.
*OpenapiClient::InstanceApi* | [**get_qr_code**](docs/InstanceApi.md#get_qr_code) | **GET** /instances/{instance_key}/qrcode | Get QrCode.
*OpenapiClient::InstanceApi* | [**list_instances**](docs/InstanceApi.md#list_instances) | **GET** /instances/list | Get all instances.
*OpenapiClient::InstanceApi* | [**logout_instance**](docs/InstanceApi.md#logout_instance) | **DELETE** /instances/{instance_key}/logout | Logout Instance.
*OpenapiClient::MessageSendingApi* | [**send_audio**](docs/MessageSendingApi.md#send_audio) | **POST** /instances/{instance_key}/send/audio | Send raw audio.
*OpenapiClient::MessageSendingApi* | [**send_button_message**](docs/MessageSendingApi.md#send_button_message) | **POST** /instances/{instance_key}/send/buttons | Send a button message.
*OpenapiClient::MessageSendingApi* | [**send_button_with_media**](docs/MessageSendingApi.md#send_button_with_media) | **POST** /instances/{instance_key}/send/button-media | Send a button message with a media header.
*OpenapiClient::MessageSendingApi* | [**send_contact**](docs/MessageSendingApi.md#send_contact) | **POST** /instances/{instance_key}/send/contact | Send a contact message.
*OpenapiClient::MessageSendingApi* | [**send_document**](docs/MessageSendingApi.md#send_document) | **POST** /instances/{instance_key}/send/document | Send raw document.
*OpenapiClient::MessageSendingApi* | [**send_group_invite**](docs/MessageSendingApi.md#send_group_invite) | **POST** /instances/{instance_key}/send/group-invite | Send a group invite message
*OpenapiClient::MessageSendingApi* | [**send_image**](docs/MessageSendingApi.md#send_image) | **POST** /instances/{instance_key}/send/image | Send raw image.
*OpenapiClient::MessageSendingApi* | [**send_list_message**](docs/MessageSendingApi.md#send_list_message) | **POST** /instances/{instance_key}/send/list | Send a List message.
*OpenapiClient::MessageSendingApi* | [**send_location**](docs/MessageSendingApi.md#send_location) | **POST** /instances/{instance_key}/send/location | Send a location message.
*OpenapiClient::MessageSendingApi* | [**send_media_message**](docs/MessageSendingApi.md#send_media_message) | **POST** /instances/{instance_key}/send/media | Send a media message.
*OpenapiClient::MessageSendingApi* | [**send_poll_message**](docs/MessageSendingApi.md#send_poll_message) | **POST** /instances/{instance_key}/send/poll | Send a Poll message.
*OpenapiClient::MessageSendingApi* | [**send_template**](docs/MessageSendingApi.md#send_template) | **POST** /instances/{instance_key}/send/template | Send a template message.
*OpenapiClient::MessageSendingApi* | [**send_template_with_media**](docs/MessageSendingApi.md#send_template_with_media) | **POST** /instances/{instance_key}/send/template-media | Send a template message with media.
*OpenapiClient::MessageSendingApi* | [**send_text_message**](docs/MessageSendingApi.md#send_text_message) | **POST** /instances/{instance_key}/send/text | Send a text message.
*OpenapiClient::MessageSendingApi* | [**send_video**](docs/MessageSendingApi.md#send_video) | **POST** /instances/{instance_key}/send/video | Send raw video.
*OpenapiClient::MessageSendingApi* | [**upload_media**](docs/MessageSendingApi.md#upload_media) | **POST** /instances/{instance_key}/send/upload | Upload media.
*OpenapiClient::MessageSendingApi* | [**upload_media_from_url**](docs/MessageSendingApi.md#upload_media_from_url) | **POST** /instances/{instance_key}/send/upload-url | Upload media from url.
*OpenapiClient::MiscellaneousApi* | [**download_media**](docs/MiscellaneousApi.md#download_media) | **POST** /instances/{instance_key}/misc/download | Download media
*OpenapiClient::MiscellaneousApi* | [**get_profile_pic**](docs/MiscellaneousApi.md#get_profile_pic) | **GET** /instances/{instance_key}/misc/profile-pic | Get profile pic.
*OpenapiClient::MiscellaneousApi* | [**get_users_info**](docs/MiscellaneousApi.md#get_users_info) | **POST** /instances/{instance_key}/misc/user-info | Fetches the users info.
*OpenapiClient::MiscellaneousApi* | [**set_chat_presence**](docs/MiscellaneousApi.md#set_chat_presence) | **POST** /instances/{instance_key}/misc/chat-presence | Set chat presence
*OpenapiClient::MiscellaneousApi* | [**update_profile_pic**](docs/MiscellaneousApi.md#update_profile_pic) | **PUT** /instances/{instance_key}/misc/profile-pic | Update profile picture


## Documentation for Models

 - [OpenapiClient::APIResponse](docs/APIResponse.md)
 - [OpenapiClient::ButtonMessagePayload](docs/ButtonMessagePayload.md)
 - [OpenapiClient::ButtonMessageWithMediaPayload](docs/ButtonMessageWithMediaPayload.md)
 - [OpenapiClient::ContactMessagePayload](docs/ContactMessagePayload.md)
 - [OpenapiClient::ContactMessagePayloadVcard](docs/ContactMessagePayloadVcard.md)
 - [OpenapiClient::CreateInstancePayload](docs/CreateInstancePayload.md)
 - [OpenapiClient::FileUpload](docs/FileUpload.md)
 - [OpenapiClient::GroupCreatePayload](docs/GroupCreatePayload.md)
 - [OpenapiClient::GroupInviteMessagePayload](docs/GroupInviteMessagePayload.md)
 - [OpenapiClient::GroupUpdateDescriptionPayload](docs/GroupUpdateDescriptionPayload.md)
 - [OpenapiClient::GroupUpdateNamePayload](docs/GroupUpdateNamePayload.md)
 - [OpenapiClient::GroupUpdateParticipantsPayload](docs/GroupUpdateParticipantsPayload.md)
 - [OpenapiClient::ListItem](docs/ListItem.md)
 - [OpenapiClient::ListMessagePayload](docs/ListMessagePayload.md)
 - [OpenapiClient::ListSection](docs/ListSection.md)
 - [OpenapiClient::LocationMessagePayload](docs/LocationMessagePayload.md)
 - [OpenapiClient::LocationMessagePayloadLocation](docs/LocationMessagePayloadLocation.md)
 - [OpenapiClient::PaymentRequestPayload](docs/PaymentRequestPayload.md)
 - [OpenapiClient::PollMessagePayload](docs/PollMessagePayload.md)
 - [OpenapiClient::ReplyButton](docs/ReplyButton.md)
 - [OpenapiClient::SendAudioRequest](docs/SendAudioRequest.md)
 - [OpenapiClient::SendDocumentRequest](docs/SendDocumentRequest.md)
 - [OpenapiClient::SendMediaPayload](docs/SendMediaPayload.md)
 - [OpenapiClient::SendVideoRequest](docs/SendVideoRequest.md)
 - [OpenapiClient::SetGroupPictureRequest](docs/SetGroupPictureRequest.md)
 - [OpenapiClient::TemplateButton](docs/TemplateButton.md)
 - [OpenapiClient::TemplateButtonPayload](docs/TemplateButtonPayload.md)
 - [OpenapiClient::TemplateButtonWithMediaPayload](docs/TemplateButtonWithMediaPayload.md)
 - [OpenapiClient::TextMessage](docs/TextMessage.md)
 - [OpenapiClient::UpdateProfilePicRequest](docs/UpdateProfilePicRequest.md)
 - [OpenapiClient::UploadMediaRequest](docs/UploadMediaRequest.md)
 - [OpenapiClient::UrlMediaUploadPayload](docs/UrlMediaUploadPayload.md)
 - [OpenapiClient::UserInfoPayload](docs/UserInfoPayload.md)
 - [OpenapiClient::WebhookPayload](docs/WebhookPayload.md)


## Documentation for Authorization


### ApiKeyAuth


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

