module Chatbot
  module Services
    class BaseRepository

      def find_all
        model.find.all
      end

      def find(id)
        model.find(id)
      end

      def model
        raise NotOverriddenError, 'model'
      end
    end
  end
end
