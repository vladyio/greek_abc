lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'greek_abc/version'

Gem::Specification.new do |spec|
  spec.name          = 'greek_abc'
  spec.version       = GreekABC::VERSION
  spec.authors       = ['Vladislav Andreev']
  spec.email         = ['andreev@vlad.social']

  spec.summary       = 'Greek alphabet manipulation gem'
  spec.homepage      = 'https://github.com/vladyio/greek_abc'
  spec.license       = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org/'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/vladyio/greek_abc'
  spec.metadata['changelog_uri'] = 'https://github.com/vladyio/greek_abc/blob/master/CHANGELOG.md'

  spec.metadata['steep_types'] = 'sig'

  spec.required_ruby_version = '>= 2.7.0'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'bin'
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'solargraph'
end
