# -*- encoding: utf-8 -*-

=begin
#Fatture in Cloud API v2 - API Reference

#Connect your software with Fatture in Cloud, the invoicing platform chosen by more than 500.000 businesses in Italy.   The Fatture in Cloud API is based on REST, and makes possible to interact with the user related data prior authorization via OAuth2 protocol.

The version of the OpenAPI document: 2.1.3
Contact: info@fattureincloud.it
Generated by: https://openapi-generator.tech
Generator version: 7.9.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "fattureincloud_ruby_sdk/version"

Gem::Specification.new do |s|
  s.name        = "fattureincloud_ruby_sdk"
  s.version     = FattureInCloud_Ruby_Sdk::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Fatture in Cloud API Team"]
  s.email       = ["info@fattureincloud.it"]
  s.homepage    = "https://github.com/fattureincloud/fattureincloud-ruby-sdk"
  s.summary     = ""
  s.description = "Ruby SDK for the Fatture in Cloud API"
  s.license     = "MIT"
  s.required_ruby_version = ">= 2.4"
  s.metadata = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
