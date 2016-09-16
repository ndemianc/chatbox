module Chatbot
  module Models
    class Config
      OPTIONS = [
        { event: :phone, name: 'Phone', subject: 'phone number', index: 1 },
        { event: :email, name: 'Email', subject: 'email address', index: 2 },
        { event: :reject, name: 'I don\'t want to be contacted', subject: nil, index: 3, reject: true }
      ].freeze
    end
  end
end
