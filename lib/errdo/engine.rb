module Errdo
  class Engine < Rails::Engine

    require 'bootstrap-sass'

    isolate_namespace Errdo

    config.autoload_paths += %W(#{config.root}/lib)

    config.before_initialize do |app|
      app.config.exceptions_app = Errdo::ExceptionsController.new(Rails.public_path)
    end

  end
end
