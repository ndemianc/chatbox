module Chatbot
  module Services
    module Profiles
      module Users
        class Creator < Chatbot::Services::BaseCreator
          def new_instance
            @user_profile ||= Chatbot::Models::Profiles::User.new
          end
        end
      end
    end
  end
end
