module Chatbot
  module Services
    module Profiles
      module Users
        class Updater < Chatbot::Services::BaseUpdater
          def repository
            @repository ||= Chatbot::Services::Profiles::Users::Repository.new
          end
        end
      end
    end
  end
end
