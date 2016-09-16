require 'active_record'
require 'active_support/all'
require 'workflow'
require 'interactor'

lib = File.expand_path('.')
$:.unshift(lib) unless $:.include?(lib)

require 'chatbot/version'
require 'chatbot/environment'
require 'chatbot/events'
require 'chatbot/services'
require 'chatbot/service'
require 'chatbot/models'
require 'chatbot/model'

module Chatbot
  def self.version
    VERSION
  end
end
