# frozen_string_literal: true

#
# BridgeBankin module
#
module BridgeBankin
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configuration=(config)
    @configuration = config
  end

  def self.configure
    yield configuration
  end

  #
  # Configurations setup
  #
  class Configuration
    attr_reader :api_base_url, :api_version, :proxy_host, :proxy_port, :proxy_username, :proxy_password
    attr_accessor :api_client_id, :api_client_secret, :proxy_host, :proxy_port, :proxy_username, :proxy_password

    #
    # Initializes Configuration
    #
    def initialize
      @api_base_url = "https://api.bridgeapi.io"
      @api_version = "2019-02-18"
      @api_client_id = "d16099aec29e445dbb31cf3966b3821e"
      @api_client_secret = "HEb73vHEGB4Hunv5OMXFUDNIgNonYJ89YaHHRSyidVgCPbCtFWqtED5fZYObA0lm"
      @proxy_host = "olympic.usefixie.com"
      @proxy_port = 80
      @proxy_username = "fixie"
      @proxy_password = "HEb9YaHRyidVgCPbFm"
    end
  end
end
