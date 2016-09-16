module Chatbot
  module Models
    module Profiles
      class User < BaseModel
        def self.to_s
          'Profile::User'.freeze
        end
      end
    end
  end
end
