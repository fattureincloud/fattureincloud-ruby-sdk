require 'uri'
require 'typhoeus'

module FattureInCloud_Ruby_Sdk
  # The OAuth2Manager class is used to manage the OAuth2 flow.
  class OAuth2Manager
    attr_accessor :client_id, :base_uri

    # Initializes a new instance of the OAuth2Manager class.
    # @param [String] client_id The client id.
    # @param [String] base_uri The base uri.
    def initialize(client_id, base_uri = 'https://api-v2.fattureincloud.it')
      @client_id = client_id
      @base_uri = base_uri
    end

    # Get the access token.
    # @param [String] url The url.
    # @param [Object] data The request data.
    # @return [Object] The response body.
    def execute_post(url, body)
      res = Typhoeus.post(token_uri, body: data)
      if res.response_code != 200
        raise "Error fetching token: #{res.response_body}"
      end
      JSON.parse(res.body)
    end

    # Build the scopes string.
    # @param [Array<Scope>] scopes The scopes.
    # @return [String] The scopes string.
    def self.get_scope_string(scopes)
      scopes.map { |scope| scope.to_s }.join(' ')
    end
  end

    # The OAuth2AuthorizationCodeManager class is used to manage the OAuth2 authorization code flow.
  class OAuth2AuthorizationCodeManager < OAuth2Manager
    attr_accessor :client_id, :client_secret, :redirect_uri, :base_uri

    # Initializes a new instance of the OAuth2AuthorizationCodeManager class.
    # @param [String] client_id The client id.
    # @param [String] client_secret The client secret.
    # @param [String] redirect_uri The redirect uri.
    # @param [String] base_uri The base uri.
    def initialize(client_id, client_secret, redirect_uri, base_uri = 'https://api-v2.fattureincloud.it')
      super client_id, base_uri
      @client_secret = client_secret
      @redirect_uri = redirect_uri
    end

    # Get the authorization url.
    # @param [Array<Scope>] scopes The scopes.
    # @param [String] state The state.
    # @return [String] The authorization url.
    def get_authorization_url(scopes, state)
      authorization_uri = "#{@base_uri}/oauth/authorize"
      scope_string = OAuth2Manager.get_scope_string(scopes)
    
      params = {
          'response_type': 'code',
          'client_id': @client_id,
          'redirect_uri': @redirect_uri,
          'scope': scope_string,
          'state': state
      }
      url = URI.parse(authorization_uri)
      url.query = URI.encode_www_form(params)
      url.to_s
    end

    # Get the access token.
    # @param [String] code The code.
    # @return [OAuth2TokenResponse] The access token.
    def fetch_token(code)
      token_uri = "#{@base_uri}/oauth/token"
      data = {
          'grant_type': 'authorization_code',
          'client_id': @client_id,
          'client_secret': @client_secret,
          'redirect_uri': @redirect_uri,
          'code': code,
      }

      json = execute_post(token_uri, data)

      OAuth2TokenResponse.new(json["token_type"], json['access_token'], json['refresh_token'], json['expires_in'])
    end

    # Get the refresh token.
    # @param [String] refresh_token The refresh token.
    # @return [OAuth2TokenResponse] The access token.
    def refresh_token(refresh_token)
      token_uri = "#{@base_uri}/oauth/token"
      data = {
          'grant_type': 'refresh_token',
          'client_id': @client_id,
          'client_secret': @client_secret,
          'refresh_token': refresh_token,
      }

      json = execute_post(token_uri, data)

      OAuth2TokenResponse.new(json["token_type"], json['access_token'], json['refresh_token'], json['expires_in'])
    end


    # Get url parameters.
    # @param [String] url The url.
    # @return [OAuth2AuthorizationCodeParams] The url parameters.
    def get_params_from_url(url)
      url_obj = URI::decode_www_form(URI.parse(url).query).to_h
      OAuth2AuthorizationCodeParams.new(url_obj['code'], url_obj['state'])
    end
  end

  # The OAuth2DeviceCodeManager class is used to manage the OAuth2 device code flow.
  class OAuth2DeviceCodeManager < OAuth2Manager
    attr_accessor :client_id, :base_uri

    # Initializes a new instance of the OAuth2DeviceCodeManager class.
    # @param [String] client_id The client id.
    # @param [String] base_uri The base uri.
    def initialize(client_id, base_uri = 'https://api-v2.fattureincloud.it')
      super client_id, base_uri
    end

    # Get the device code.
    # @param [Array<Scope>] scopes The scopes.
    # @return [OAuth2DeviceCodeResponse] The device code.
    def get_device_code(scopes)
      device_uri = "#{@base_uri}/oauth/device"
      scope_string = OAuth2Manager.get_scope_string(scopes)

      data = {
          'client_id': @client_id,
          'scope': scope_string
      }

      json = execute_post(device_uri, data)

      OAuth2DeviceCodeResponse.new(json["device_code"], json['user_code'], json['scope'], json['verification_uri'], json['interval'], json['expires_in'])
    end

    # Get the access token.
    # @param [String] code The device code.
    # @return [OAuth2TokenResponse] The access token.
    def fetch_token(code)
      token_uri = "#{@base_uri}/oauth/token"
      data = {
          'grant_type': 'urn:ietf:params:oauth:grant-type:device_code',
          'client_id': @client_id,
          'device_code': code,
      }

      json = execute_post(token_uri, data)

      OAuth2TokenResponse.new(json["token_type"], json['access_token'], json['refresh_token'], json['expires_in'])
    end

    # Get the refresh token.
    # @param [String] refresh_token The refresh token.
    # @return [OAuth2TokenResponse] The access token.
    def refresh_token(refresh_token)
      token_uri = "#{@base_uri}/oauth/token"
      data = {
          'grant_type': 'refresh_token',
          'client_id': @client_id,
          'refresh_token': refresh_token,
      }

      json = execute_post(token_uri, data)

      OAuth2TokenResponse.new(json["token_type"], json['access_token'], json['refresh_token'], json['expires_in'])
    end
  end

  # The Oauth2AuthorizationCodeParams class is used to manage the OAuth2 redirect url query parameters.
  class OAuth2AuthorizationCodeParams
    attr_accessor :authorization_code, :state
    
    # Initializes a new instance of the OAuth2AuthorizationCodeParams class.
    # @param [String] authorization_code The authorization code.
    # @param [String] state The state.
    def initialize(authorization_code, state)
      @authorization_code = authorization_code
      @state = state
    end
  end

  # The OAuth2TokenResponse class is used to manage the OAuth2 token response.
  class OAuth2TokenResponse
    attr_accessor :token_type, :access_token, :refresh_token, :expires_in

    # Initializes a new instance of the OAuth2TokenResponse class.
    # @param [String] token_type The token type.
    # @param [String] access_token The access token.
    # @param [String] refresh_token The refresh token.
    # @param [Number] expires_in The expire time.
    def initialize(token_type, access_token, refresh_token, expires_in)
      @token_type = token_type
      @access_token = access_token
      @refresh_token = refresh_token
      @expires_in = expires_in
    end
  end

  # The OAuth2DeviceCodeResponse class is used to manage the OAuth2 device code response.
  class OAuth2DerviceCodeResponse
    attr_accessor :device_code, :user_code, :scope, :verification_uri, :interval, :expires_in

    # Initializes a new instance of the OAuth2TokenResponse class.
    # @param [String] device_code The token type.
    # @param [String] user_code The access token.
    # @param [Object] user_code The access token.
    # @param [String] verification_uri The verification uri.
    # @param [Number] interval The interval between two requests.
    # @param [Number] expires_in The expire time.
    def initialize(device_code, user_code, scope, verification_uri, interval, expires_in)
      @device_code = device_code
      @user_code = user_code
      @scope = scope
      @verification_uri = verification_uri
      @interval = interval
      @expires_in = expires_in
    end
  end
end
