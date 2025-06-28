# frozen_string_literal: true

require_relative 'lib/claude_on_rails/version'

Gem::Specification.new do |spec|
  spec.name = 'claude-on-rails'
  spec.version = ClaudeOnRails::VERSION
  spec.authors = ['Obie Fernandez', 'Aaron F Stanton']
  spec.email = ['obiefernandez@gmail.com', 'afstanton@gmail.com']

  spec.summary = 'Rails development framework powered by Claude swarm intelligence'
  spec.description = 'ClaudeOnRails leverages claude-swarm to create an intelligent team of AI agents ' \
                     'specialized in different aspects of Rails development. Simply describe what you want to build, ' \
                     'and the swarm handles the rest.'
  spec.homepage = 'https://github.com/afstanton/claude-on-rails'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.3.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor .github])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Runtime dependencies
  spec.add_dependency 'claude_swarm', '~> 0.1'
  spec.add_dependency 'rails', '>= 6.0'

  # Development dependencies are specified in Gemfile

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
