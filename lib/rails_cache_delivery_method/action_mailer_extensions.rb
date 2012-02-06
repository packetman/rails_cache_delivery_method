require File.join(File.dirname(__FILE__), 'cache')

module RailsCacheDeliveryMethod
  module ActionMailerExtensions
    extend ActiveSupport::Concern

    CACHE_PATH = File.join(Rails.root, 'tmp', 'cache', 'action_mailer_cache_deliveries.cache')

    included do
      add_delivery_method :cache, Mail::Cache, {
          :cache_path => CACHE_PATH
      }
    end

    module ClassMethods
      def cached_deliveries
        File.open(CACHE_PATH, 'r') do |file|
          Marshal.load(file)
        end
      end

      def clear_cache
        FileUtils.rm(CACHE_PATH) if File.exists?(CACHE_PATH)
        FileUtils.touch CACHE_PATH
      end
    end
  end
end