require 'rails/generators/rails/scaffold_controller/scaffold_controller_generator.rb'

module Hecks
  class ScaffoldGenerator < Rails::Generators::ScaffoldControllerGenerator
    def create_controller_files
      populate_attributes

      super
    end

    private

    def aggregate
      HecksApp::DOMAIN_SCHEMA.aggregates.find do |aggregate|
        aggregate.name.to_s == aggregate_name
      end
    end

    def aggregate_name
      class_name.split('::').first
    end

    def domain_object
      aggregate.domain_objects.find do |domain_object|
        domain_object.name.to_s == domain_object_name
      end
    end

    def domain_object_name
      class_name.split('::').last
    end

    def populate_attributes
      domain_object.fields.each do |field|
        next if field.module_name
        next if field.name == :id

        @attributes << Rails::Generators::GeneratedAttribute.new(
          field.name, type(field)
        )
        @_initializer[0] << "#{field.name}:#{type(field)}"
      end
    end

    def type(field)
      case field
      when HecksDomain::Parser::IntegerField
        :integer
      when HecksDomain::Parser::StringField
        :string
      end
    end
  end
end
