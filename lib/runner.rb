require 'active_support'

require File.dirname(__FILE__) + '/runner/messaging'
require File.dirname(__FILE__) + '/runner/performable_method'
require File.dirname(__FILE__) + '/runner/yaml_ext'
require File.dirname(__FILE__) + '/runner/backend/base'
require File.dirname(__FILE__) + '/runner/concurrecy'
require File.dirname(__FILE__) + '/runner/task_spawner'
require File.dirname(__FILE__) + '/runner/task_handler'
require File.dirname(__FILE__) + '/runner/engine' if defined? Rails && Rails::VERSION::MAJOR == 3

ActionController::Base.send(:include, Runner::Messaging) if defined? ActionController
Module.send(:include, Runner::Messaging::ClassMethods)

module Runner
  # Set the default concurrency handler. By default all child tasks get forked.
  mattr_accessor :default_spawn_method
  @@default_spawn_method = :fork
  
  # Throw an exception if an undefined concurrency handler is specified. Default is false
  mattr_accessor :raise_on_concurrency_handler_error
  @@raise_on_concurrency_handler_error = false
  
  # Abort all threads if one a thread raises an error. Default is false
  mattr_accessor :thread_abort_on_exception
  @@thread_abort_on_exception = false
  
  # Amount of tasks a task handler will process.
  mattr_accessor :task_limit
  @@task_limit = 5
  
  # Default serializer. Default options are :yaml and :marshal.
  # If you'd like to pass your own serialization methods supply your own serialization class.
  # Serialization requires load and dump. Dump should return the serialized objects and load should return a deserialized object.
  mattr_accessor :serializer
  @@serializer = :yaml
  
  def self.setup
    yield self
  end
end