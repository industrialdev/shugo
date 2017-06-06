# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shugo/version'

Gem::Specification.new do |spec|
  spec.name          = 'shugo'
  spec.version       = Shugo::VERSION
  spec.authors       = ['Andrew Markle']
  spec.email         = ['andrew.markle@gmail.com']

  spec.summary       = %q{Industrial Ruby Style Guide.}
  spec.description   = %q{Shugo (守護) was a title, commonly translated as "governor", "protector" or "constable", given to certain officials in feudal Japan. They were appointed by the Shogun to oversee one or more of the provinces of Japan.}
  spec.homepage      = 'https://github.com/industrialdev/shugo'
  spec.license       = 'MIT'

  spec.post_install_message = <<-ENDOFMESSAGE
Make sure to inherit from shugo in your .rubocopy.yml file to get all the style goodness.

If you're in Rails:

inherit_gem:
  house_style: ruby/rubocop.yml

or...if not in Rails

inherit_gem:
  house_style: ruby/rubocop.yml

  ENDOFMESSAGE

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.49.1'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
end
