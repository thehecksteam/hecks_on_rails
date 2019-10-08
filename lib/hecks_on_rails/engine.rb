require 'hecks-app'

module HecksOnRails
  class Engine < ::Rails::Engine
    config.app_generators do |g|
      g.templates << File.expand_path('../templates', __dir__)
    end
  end
end
