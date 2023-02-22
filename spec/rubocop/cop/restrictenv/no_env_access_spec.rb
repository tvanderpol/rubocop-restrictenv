# frozen_string_literal: true

RSpec.describe RuboCop::Cop::Restrictenv::NoEnvAccess, :config do
  let(:config) { RuboCop::Config.new }

  it 'registers an offense when using ENV.fetch' do
    expect_offense(<<~RUBY)
      ENV.fetch('SOMETHING')
      ^^^^^^^^^^^^^^^^^^^^^^ Do not access ENV directly in application code.
    RUBY
  end

  it 'registers an offense when using ENV.fetch with a default value' do
    expect_offense(<<~RUBY)
      ENV.fetch('ANYTHING', 'default')
      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ Do not access ENV directly in application code.
    RUBY
  end

  it "registers an offense when using ENV['something']" do
    expect_offense(<<~RUBY)
      ENV['something']
      ^^^^^^^^^^^^^^^^ Do not access ENV directly in application code.
    RUBY
  end
end
