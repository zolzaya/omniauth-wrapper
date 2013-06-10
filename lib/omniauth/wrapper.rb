# encoding: utf-8

require "omniauth/wrapper/version"

module Omniauth
  module Wrapper

    module Provider
      autoload :Facebook, 'omniauth/wrapper/provider/facebook'
    end

    def self.init(auth_hash)
      klass = Provider::Facebook.new(auth_hash)
      klass
    end
  end
end
