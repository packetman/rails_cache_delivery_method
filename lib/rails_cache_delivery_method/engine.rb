module RailsCacheDeliveryMethod
  class Engine < ::Rails::Engine
    initializer "rails_cache_delivery_method.initialize" do
      ActiveSupport.on_load(:action_mailer) do
        ActionMailer::Base.send(:include, RailsCacheDeliveryMethod::ActionMailerExtensions)
      end
    end
  end
end