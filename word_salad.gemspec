# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'word_salad/version'

Gem::Specification.new do |s|
  s.name        = 'word_salad'
  s.version     = '3.0.0'
  s.authors     = ['Alex Vollmer', 'Alice Brown']
  s.email       = ['alex.vollmer@gmail.com', 'alice@alum.mit.edu']
  s.homepage    = 'https://github.com/ambtus/word_salad'
  s.summary     = 'Generate strings of random English text'
  s.license = 'MIT'

  s.description = 'Word Salad is a very simple Ruby library for generating random strings of English words based on a list of basic english words.'
  s.required_ruby_version = '>= 3.0'
  s.platform = Gem::Platform::RUBY

  s.files         = ['lib/word_salad.rb', 'lib/word_salad/core_ext.rb', 'lib/word_salad/dictionary']
  s.require_paths = ['lib']
  s.add_development_dependency 'rspec', '~> 3.0'
  s.add_development_dependency 'rubocop-rspec', '~> 3.8'
  s.metadata['rubygems_mfa_required'] = 'true'
end
