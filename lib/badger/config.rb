module Badger
  class Config

    include Singleton

    def initialize
      @config   = YAML.load(File.open(File.join(File.dirname(__FILE__), '..', '..', 'config/config.yaml')))
      @services = YAML.load(File.open(File.join(File.dirname(__FILE__), '..', '..', 'config/services.yaml')))
      @licenses = YAML.load(File.open(File.join(File.dirname(__FILE__), '..', '..', 'config/licenses.yaml')))
    end

    def services
      @services
    end

    def licenses
      @licenses
    end

    def config
      @config
    end
  end
end