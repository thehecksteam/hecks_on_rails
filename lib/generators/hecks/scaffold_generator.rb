require "rails/generators/rails/scaffold_controller/scaffold_controller_generator.rb"

# path = File.expand_path('../templates', __dir__)  

# HecksOnRails::Engine.config.app_generators do |g|
#   g.templates << File.expand_path('../templates', __dir__)
#   g.orm false
# end

class Hecks
  class ScaffoldGenerator < Rails::Generators::ScaffoldControllerGenerator
    attr_reader :aggregate_name, :domain_object_name
    def create_controller_files
      @aggregate_name = class_name.split('::').first
      @domain_object_name = class_name.split('::').last
      super
    end
  end
end