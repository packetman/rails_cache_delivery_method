require File.join(File.dirname(__FILE__), 'rails_cache_delivery_method', 'engine') if defined? ::Rails

module RailsCacheDeliveryMethod
  extend ActiveSupport::Autoload

  autoload :ActionMailerExtensions
end
