# frozen_string_literal: true

module RuboCop
  module Cop
    module Restrictenv
      # This cop prevents accessing ENV. Use it in conjunction with an
      # exception in .rubocop.yml to enforce where environment variables can be read
      #
      # Use this cop to enforce interacting with the environment only in initializers
      # and in config/ files, for example.
      #
      # @example EnforcedStyle: forbid (default)
      #   # Description of the `forbid` style.
      #
      #   # bad
      #   ENV.fetch('SOMETHING')
      #
      #   # bad
      #   ENV.fetch('SOMETHING', 'default_value')
      #
      #   # bad
      #   ENV['SOMETHING']
      #
      class NoEnvAccess < Base
        MSG = 'Do not access ENV directly in application code.'

        def_node_matcher :env_used?, <<~PATTERN
          (send (const ... :ENV) ...)
        PATTERN

        def on_send(node)
          return unless env_used?(node)

          add_offense(node)
        end
      end
    end
  end
end
