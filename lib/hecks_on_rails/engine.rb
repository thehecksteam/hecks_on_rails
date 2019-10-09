require 'hecks-app'

module HecksOnRails
  class Engine < ::Rails::Engine
    config.app_generators do |g|
      g.scaffold = false
      g.templates << File.expand_path('../templates', __dir__)
      g.orm false
    end
  end
end
