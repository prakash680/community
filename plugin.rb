# frozen_string_literal: true

# name: logger-plugin
# about: TODO
# meta_topic_id: TODO
# version: 0.0.1
# authors: Humanx
# url: TODO
# required_version: 2.7.0

enabled_site_setting :logger_plugin_enabled

module ::LoggerPlugin
  PLUGIN_NAME = "logger-plugin"
end

require_relative "lib/logger_plugin/engine"

after_initialize do
  load File.expand_path('config/routes.rb', __dir__)
  


  # require_dependency File.expand_path("../lib/hooks_patch.rb", __FILE__)
  # ::ApplicationController.class_eval do
  #   include ::HooksPatch
  # end

end




# load File.expand_path('../lib/logger.rb', __FILE__)
# load File.expand_path('../lib/hooks.rb', __FILE__)
# load File.expand_path('../jobs/logger_worker.rb', __FILE__)
