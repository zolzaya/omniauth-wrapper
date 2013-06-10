# encoding: utf-8

module Omniauth
  module Wrapper
    module Provider
      class Facebook
        attr_reader :auth_hash

        def initialize(auth_hash)
          @auth_hash = auth_hash
        end

        def uid
          @uid ||= auth_hash['uid']
        end

        def provider
          @provider ||= auth_hash['provider'].to_s.downcase
        end

        def credentials
          @credentials ||= (auth_hash['credentials'] || {})
        end

        def access_token
          @access_token ||= credentials['token']
        end

        def token_expires_at
          @token_expires_at ||= parse_datetime(credentials['expires_at'])
        end

        protected
          def parse_datetime(value)
            return nil if value.nil? || value.to_i.zero?
            Time.at(value.to_i).to_datetime
          end
      end
    end
  end
end
