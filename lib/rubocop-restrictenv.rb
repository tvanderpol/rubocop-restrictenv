# frozen_string_literal: true

require 'yaml'
require 'rubocop'

require_relative 'rubocop/restrict_env'
require_relative 'rubocop/restrict_env/version'
require_relative 'rubocop/restrict_env/inject'

RuboCop::RestrictEnv::Inject.defaults!

require_relative 'rubocop/cop/restrictenv_cops'
