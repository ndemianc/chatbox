module Chatbot
  module Services
    class BaseUpdater
      include Interactor

      delegate :id, :params, to: :context

      def call(params)
        if intance.blank?
          context.fail!(type: :not_found, errors: ["Entity (#{id}) could not be found."])
        elsif !instance.update_attributes(params)
          context.fail!(type: :invalid, errors: error_messages)
        else
          context.instance = instance
        end
      end

      def instance
        @instance ||= repository.find(id)
      end

      def repository
        raise NotOverriddenError, 'repository'
      end

      def error_messages
        instance.error.full_messages
      end
    end
  end
end
