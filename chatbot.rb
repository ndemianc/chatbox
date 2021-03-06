require 'active_record'
require 'active_support/all'
require 'workflow'
require 'interactor'

lib = File.expand_path('.')
$:.unshift(lib) unless $:.include?(lib)

require 'environment'
require 'chatbot/version'
require 'chatbot/events'
require 'chatbot/service'
require 'chatbot/model'

module Chatbot
  def self.version
    VERSION
  end
end
