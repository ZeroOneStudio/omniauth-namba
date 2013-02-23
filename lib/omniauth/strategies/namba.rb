require 'omniauth-oauth'
require 'multi_json'
require 'net/http'

module OmniAuth
  module Strategies
    class Namba < OmniAuth::Strategies::OAuth

      option :name, "namba"
      option :locale, "kg"
      option :client_options, {
        :site => "http://api.namba.#{default_options.locale}",
        :request_token_path => "/oauth/request_token.php", 
        :authorize_url => "http://login.namba.#{default_options.locale}/login2.php",
        :access_token_path => "/oauth/access_token.php"
      }

      option :fields, ["status", "login", "firstname", "lastname", "birthdate", "sex", "avatar"]

      uid { raw_info['login'] }

      info do
        {
          :status => raw_info['status'],
          :login => raw_info['login'],
          :firstname => raw_info['firstname'],
          :lastname => raw_info['lastname'],
          :birthdate => raw_info['birthdate'],
          :sex => raw_info['sex'],
          :avatar => raw_info['avatar']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= MultiJson.load(access_token.get("http://api.namba.#{default_options.locale}/getUserInfo2.php").body)
      rescue ::Errno::ETIMEDOUT
        raise ::Timeout::Error
      end

    end
  end
end

OmniAuth.config.add_camelization 'namba', 'Namba'

