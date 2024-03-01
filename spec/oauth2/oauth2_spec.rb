=begin

#Fatture in Cloud API v2 - Oauth Helper

=end

require 'spec_helper'

describe FattureInCloud_Ruby_Sdk::OAuth2AuthorizationCodeManager do
  let(:oauth) { FattureInCloud_Ruby_Sdk::OAuth2AuthorizationCodeManager.new('CLIENT_ID', 'CLIENT_SECRET', 'http://localhost:3000/redirect') }
  

  describe 'test an instance of OAuth2AuthorizationCodeManager' do
    it 'should create an instance of OAuth2AuthorizationCodeManager' do
      expect(oauth).to be_instance_of(FattureInCloud_Ruby_Sdk::OAuth2AuthorizationCodeManager)
      expect(oauth.client_id).to eq('CLIENT_ID')
      expect(oauth.client_secret).to eq('CLIENT_SECRET')
      expect(oauth.redirect_uri).to eq('http://localhost:3000/redirect')

      oauth.client_id = 'CLIENT_ID_2'
      expect(oauth.client_id).to eq('CLIENT_ID_2')
      oauth.client_secret = 'CLIENT_SECRET_2'
      expect(oauth.client_secret).to eq('CLIENT_SECRET_2')
      oauth.redirect_uri = 'http://localhost:3000/redirect_2'
      expect(oauth.redirect_uri).to eq('http://localhost:3000/redirect_2')
    end
  end

  describe 'test an instance of OAuth2AuthorizationCodeParams' do
    it 'should work' do
      params = FattureInCloud_Ruby_Sdk::OAuth2AuthorizationCodeParams.new('EXAMPLE_CODE', 'EXAMPLE_STATE')
      expect(params.authorization_code).to eq('EXAMPLE_CODE')
      expect(params.state).to eq('EXAMPLE_STATE')

      params.authorization_code = 'NEW_CODE'
      expect(params.authorization_code).to eq('NEW_CODE')
      params.state = 'NEW_STATE'
      expect(params.state).to eq('NEW_STATE')
    end
  end

  describe 'test an instance of OAuth2AuthorizationCodeParams' do
    it 'should work' do
      params = FattureInCloud_Ruby_Sdk::OAuth2TokenResponse.new('bearer', 'EXAMPLE_TOKEN', 'EXAMPLE_REFRESH_TOKEN', 86400)
      expect(params.token_type).to eq('bearer')
      expect(params.access_token).to eq('EXAMPLE_TOKEN')
      expect(params.refresh_token).to eq('EXAMPLE_REFRESH_TOKEN')
      expect(params.expires_in).to eq(86400)

      params.token_type = 'basic'
      expect(params.token_type).to eq('basic')
      params.access_token = 'NEW_TOKEN'
      expect(params.access_token).to eq('NEW_TOKEN')
      params.refresh_token = 'NEW_REFRESH_TOKEN'
      expect(params.refresh_token).to eq('NEW_REFRESH_TOKEN')
      params.expires_in = 3600
      expect(params.expires_in).to eq(3600)
    end
  end

  describe 'test method "get_scope_string"' do
    it 'should work' do
      scopes = [FattureInCloud_Ruby_Sdk::Scope::ISSUED_DOCUMENTS_INVOICES_READ, FattureInCloud_Ruby_Sdk::Scope::SETTINGS_ALL]
      scopes_string = FattureInCloud_Ruby_Sdk::OAuth2AuthorizationCodeManager::get_scope_string(scopes)

      expect(scopes_string).to eq('issued_documents.invoices:r settings:a')
    end
  end

  describe 'test method "get_authorization_url"' do
    it 'should work' do
      scopes = [FattureInCloud_Ruby_Sdk::Scope::SETTINGS_ALL, FattureInCloud_Ruby_Sdk::Scope::ISSUED_DOCUMENTS_INVOICES_READ]
      scopes_string = FattureInCloud_Ruby_Sdk::OAuth2AuthorizationCodeManager::get_scope_string(scopes)

      url = oauth.get_authorization_url(scopes, 'EXAMPLE_STATE')

      expect(url).to eq('https://api-v2.fattureincloud.it/oauth/authorize?response_type=code&client_id=CLIENT_ID&redirect_uri=http%3A%2F%2Flocalhost%3A3000%2Fredirect&scope=settings%3Aa+issued_documents.invoices%3Ar&state=EXAMPLE_STATE')
    end
  end

end

describe FattureInCloud_Ruby_Sdk::OAuth2DeviceCodeManager do
  let(:oauth) { FattureInCloud_Ruby_Sdk::OAuth2DeviceCodeManager.new('CLIENT_ID') }
  

  describe 'test an instance of OAuth2DeviceCodeManager' do
    it 'should create an instance of OAuth2DeviceCodeManager' do
      expect(oauth).to be_instance_of(FattureInCloud_Ruby_Sdk::OAuth2DeviceCodeManager)
      expect(oauth.client_id).to eq('CLIENT_ID')

      oauth.client_id = 'CLIENT_ID_2'
      expect(oauth.client_id).to eq('CLIENT_ID_2')
    end
  end

  describe 'test an instance of OAuth2DeviceCodeResponse' do
    it 'should work' do
      scope = { "situation" => "r", "settings" => "a" }
      params = FattureInCloud_Ruby_Sdk::OAuth2DeviceCodeResponse.new('PAPAYA', 'LION', scope, 'https://fattureincloud.it/connetti', 5, 300)
      expect(params.device_code).to eq('PAPAYA')
      expect(params.user_code).to eq('LION')
      expect(params.scope).to eq(scope)
      expect(params.verification_uri).to eq('https://fattureincloud.it/connetti')
      expect(params.interval).to eq(5)
      expect(params.expires_in).to eq(300)

      scope2 = { "situation" => "a" }
      params.device_code = 'TIRAMISU'
      expect(params.device_code).to eq('TIRAMISU')
      params.user_code = 'FELIX-BEACH'
      expect(params.user_code).to eq('FELIX-BEACH')
      params.scope = scope2
      expect(params.scope).to eq(scope2)
      params.verification_uri = 'https://colombiatourism.co'
      expect(params.verification_uri).to eq('https://colombiatourism.co')
      params.interval = 69
      expect(params.interval).to eq(69)
      params.expires_in = 3600
      expect(params.expires_in).to eq(3600)
    end
  end

  describe 'test method "get_scope_string"' do
    it 'should work' do
      scopes = [FattureInCloud_Ruby_Sdk::Scope::ISSUED_DOCUMENTS_INVOICES_READ, FattureInCloud_Ruby_Sdk::Scope::SETTINGS_ALL]
      scopes_string = FattureInCloud_Ruby_Sdk::OAuth2DeviceCodeManager::get_scope_string(scopes)

      expect(scopes_string).to eq('issued_documents.invoices:r settings:a')
    end
  end

end
