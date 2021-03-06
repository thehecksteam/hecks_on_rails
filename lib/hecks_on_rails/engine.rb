require 'hecks-app'

module HecksOnRails
  class Engine < ::Rails::Engine
    config.app_generators do |g|
      g.scaffold = false
      if ARGV.first && ARGV.first.include?('hecks')
        g.templates << File.expand_path('../templates', __dir__)
      end
      g.orm false
    end
  end
end
