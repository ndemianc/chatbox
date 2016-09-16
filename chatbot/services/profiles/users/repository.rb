module Chatbot
  module Services
    module Profiles
      module Users
        class Repository < Chatbot::Services::BaseRepository
          def model
            Chatbot::Models::Profiles::User
          end
        end
      end
    end
  end
end
