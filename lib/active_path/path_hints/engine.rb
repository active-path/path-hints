require 'active_path/path_hints/subscriber'
module ActivePath
  module PathHints
    class Engine < Rails::Engine
      isolate_namespace ActivePath::PathHints

      config.after_initialize do
        if ActivePath.config.path_hints
          ActiveSupport::Notifications.subscribe(:render_partial, Subscriber.new)
        end
      end
    end
  end
end
