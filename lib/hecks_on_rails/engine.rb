require 'hecks-app'

module HecksOnRails
  class Engine < ::Rails::Engine
    config.app_generators do |g|
      if ARGV[0].try(:include?, 'hecks')
        g.templates << File.expand_path('../templates', __dir__)
      end
      g.orm false
    end
  end
end
