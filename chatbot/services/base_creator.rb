module Chatbot
  module Services
    class BaseCreator
      include Interactor

      delegate :params, to: :context

      def call
        if new_instance.valid?
          new_instance.save!
          context.instance = new_instance
        else
          context.fail!(type: :invalid, errors: error_messages)
        end
      end

      def new_instance
        raise NotOverriddenError, 'new_instance'
      end

      def error_messages
        new_instance.error.full_messages
      end
    end
  end
end
