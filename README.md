# Shugo

Shugo (守護) was a title, commonly translated as "governor", "protector" or "constable", given to certain officials in feudal Japan. They were each appointed by the Shogun to oversee one or many provinces of Japan.

This gem uses [Rubocop](https://github.com/bbatsov/rubocop) to enforce Industrial's Ruby Style Guide across multiple projects.


## Installation in Rails

Add this line to your application's Gemfile:

```ruby
gem 'shugo'
```

And then execute:

    $ bundle


`shugo` comes with a Rails generator which can set up your rubocop files. With `shugo` declared in your Gemfile:

```bash
$ rails generate shugo:install
```

This will create `.rubocop.yml` file in your project root that inherits from the gem and also one
in the db/migrations with some rules that make sense for them.

Or you can just manually inherit from your `rubocop.yml` file.

```yaml
inherit_gem:
  shugo: rails/rubocop.yml
```

## Installation in Ruby

For gems and non-Rails projects, add the following to the top of your `.rubocop.yml` file:

```yaml
inherit_gem:
  shugo: ruby/rubocop.yml
```

### Releasing a new version

Update the version number in `shugo.gemspec`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/altmetric/shugo. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

