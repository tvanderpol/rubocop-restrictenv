# frozen_string_literal: true

require 'rubocop'

require_relative 'rubocop/restrictenv'
require_relative 'rubocop/restrictenv/version'
require_relative 'rubocop/restrictenv/inject'

RuboCop::Restrictenv::Inject.defaults!

require_relative 'rubocop/cop/restrictenv_cops'
