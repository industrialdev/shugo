require 'rails/generators'
require 'rails/generators/base'

module Shugo
  # Installs the rubocop.yml files into a rails project that inherits from this gem.
  class InstallGenerator < Rails::Generators::Base
    def self.source_root
      @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
    end

    def create_root_rubocop_yml
      template 'rubocop.yml', '.rubocop.yml'
    end

    def create_db_migrate_rubocop_yml
      template 'db_migrate_rubocop.yml', 'db/migrate/.rubocop.yml' if Dir.exist?(db_path)
    end

    private

    def db_path
      File.join(Rails.root, 'db')
    end
  end
end
