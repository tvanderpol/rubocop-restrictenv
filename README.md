# RuboCop RestrictEnv

A [RuboCop](https://github.com/rubocop/rubocop) plugin to restrict ENV usage

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-restrictenv', require: false
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rubocop-restrictenv

## Usage

You need to tell RuboCop to load the Restrictenv extension. There are three
ways to do this:

### RuboCop configuration file

Put this into your `.rubocop.yml`.

```yaml
require: rubocop-restrictenv
```

Alternatively, use the following array notation when specifying multiple extensions.

```yaml
require:
  - rubocop-other-extension
  - rubocop-restrictenv
```

Now you can run `rubocop` and it will automatically load the RuboCop Restrictenv
cops together with the standard cops.

Note that the default behaviour prevents **any** usage of `ENV`, this is probably not what you want.

I suggest a configuration like the below in your `.rubocop.yml` to enforce a pattern of use you are happy with.

```yaml

RestrictEnv/NoEnvAccess:
  Exclude:
    - 'config/'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tvanderpol/rubocop-restrictenv. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/tvanderpol/rubocop-restrictenv/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RuboCop::RestrictEnv project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/tvanderpol/rubocop-restrictenv/blob/main/CODE_OF_CONDUCT.md).
