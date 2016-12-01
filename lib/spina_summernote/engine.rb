module SpinaSummernote
  class Engine < ::Rails::Engine
    require 'summernote-rails'
    require 'bootstrap'
    require 'rails-assets-tether'
    initializer 'spina.plugin.register.spina_summernote', before: :load_config_initializers do
      ::Spina::Plugin.register do |plugin|
        plugin.name = 'Summernote'
        plugin.namespace = 'summernote'
      end
    end
  end
end
