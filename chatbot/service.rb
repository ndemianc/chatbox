module Chatbot
  class Service
    def current_user(id)
      @current_user ||= Chatbot::Services::Profiles::Users::Repository.find(id)
    end

    def selected_option
      current_user.fetch(:selected_option)
    end
    
    def create_user
      Chatbot::Services::Profiles::Users::Creator.call
    end

    def update_user(params)
      Chatbot::Services::Profiles::Users::Updater.call(params)
    end
  end
end
