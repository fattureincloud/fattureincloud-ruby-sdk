require 'uri'
require 'typhoeus'

module FattureInCloud_Ruby_Sdk
  # The OAuth2AuthorizationCodeManager class is used to manage the OAuth2 authorization code flow.
  class OAuth2AuthorizationCodeManager
    attr_accessor :client_id, :client_secret, :redirect_uri, :base_uri

    # Initializes a new instance of the OAuth2AuthorizationCodeManager class.
    # @param [String] client_id The client id.
    # @param [String] client_secret The client secret.
    # @param [String] redirect_uri The redirect uri.
    # @param [String] base_uri The base uri.
    def initialize(client_id, client_secret, redirect_uri, base_uri = 'https://api-v2.fattureincloud.it')
      @client_id = client_id
      @client_secret = client_secret
      @redirect_uri = redirect_uri
      @base_uri = base_uri
    end

    # Get the authorization url.
    # @param [Array<Scope>] scopes The scopes.
    # @param [String] state The state.
    # @return [String] The authorization url.
    def get_authorization_url(scopes, state)
      authorization_uri = "#{@base_uri}/oauth/authorize"
      scope_string = OAuth2AuthorizationCodeManager.get_scope_string(scopes)
    
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
    # @return [OAuth2AuthorizationCodeTokenResponse] The access token.
    def fetch_token(code)
      token_uri = "#{@base_uri}/oauth/token"
      data = {
          'grant_type': 'authorization_code',
          'client_id': @client_id,
          'client_secret': @client_secret,
          'redirect_uri': @redirect_uri,
          'code': code,
      }

      res = Typhoeus.post(token_uri, body: data)
      if res.response_code != 200
        raise "Error fetching token: #{res.response_body}"
      end
      json = JSON.parse(res.body)

      OAuth2AuthorizationCodeTokenResponse.new(json["token_type"], json['access_token'], json['refresh_token'], json['expires_in'])
    end

    # Get the refresh token.
    # @param [String] refresh_token The refresh token.
    # @return [OAuth2AuthorizationCodeTokenResponse] The access token.
    def refresh_token(refresh_token)
      token_uri = "#{@base_uri}/oauth/token"
      data = {
          'grant_type': 'refresh_token',
          'client_id': @client_id,
          'client_secret': @client_secret,
          'refresh_token': refresh_token,
      }

      res = Typhoeus.post(token_uri, body: data)
      if res.response_code != 200
        raise "Error fetching token: #{res.response_body}"
      end
      json = JSON.parse(res.body)

      OAuth2AuthorizationCodeTokenResponse.new(json["token_type"], json['access_token'], json['refresh_token'], json['expires_in'])
    end


    # Get url parameters.
    # @param [String] url The url.
    # @return [OAuth2AuthorizationCodeParams] The url parameters.
    def get_params_from_url(url)
      url_obj = URI::decode_www_form(URI.parse(url).query).to_h
      OAuth2AuthorizationCodeParams.new(url_obj['code'], url_obj['state'])
    end

    # Build rh escopes string.
    # @param [Array<Scope>] scopes The scopes.
    # @return [String] The scopes string.
    def self.get_scope_string(scopes)
      scopes.map { |scope| scope.to_s }.join(' ')
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

  # The OAuth2AuthorizationCodeTokenResponse class is used to manage the OAuth2 authorization code token response.
  class OAuth2AuthorizationCodeTokenResponse
    attr_accessor :token_type, :access_token, :refresh_token, :expires_in

    # Initializes a new instance of the OAuth2AuthorizationCodeTokenResponse class.
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
end
