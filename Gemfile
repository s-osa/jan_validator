source 'https://rubygems.org'

# Specify your gem's dependencies in jan_validator.gemspec
gemspec

active_model_version = ENV['ACTIVE_MODEL_VERSION'] || 'default'

active_model_opts =
  case active_model_version
  when 'master'
    { github: 'rails/rails' }
  when 'default'
    '~> 3'
  else
    "~> #{active_model_version}"
  end

gem 'activemodel', active_model_opts
