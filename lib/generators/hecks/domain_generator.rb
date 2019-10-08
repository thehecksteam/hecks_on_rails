module Hecks
  class DomainGenerator < Rails::Generators::Base
    def create_initializer_file
      create_file(
        'config/initializers/domain.rb',
        <<~DOMAIN_INITIALIZER
          #{Gem.loaded_specs.select { |_name, spec| spec.name.include?('hecks-adapters') }.values.map do |adapter|
              'require \'hecks-adapters/' + adapter.name.gsub('hecks-adapters-', '') + "'"
            end.join("\n")}

          Domain = HecksApp::ApplicationPort
          Domain.config do
            domain  #{Gem.loaded_specs.find { |_name, spec| spec.metadata.keys.include?('hecks_domain')}.try(:first).try(:capitalize)}
            adapter :#{Gem.loaded_specs.select { |_name, spec| spec.name.include?('hecks-adapters') }.try(:keys).try(:first).try(:split, 'hecks-adapters-').try(:last).try(:capitalize)}
          end
        DOMAIN_INITIALIZER
      )
    end
  end
end
