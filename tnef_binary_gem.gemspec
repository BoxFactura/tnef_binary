# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tnef_binary_gem/version'

Gem::Specification.new do |spec|
  spec.required_ruby_version = '>= 2.4'
  spec.name          = 'tnef_binary_gem'
  spec.version       = TnefBinaryGem::VERSION
  spec.authors       = ['Arandi Lopez']
  spec.email         = ['arandilopez.93@gmail.com']
  spec.licenses      = %w[MIT GPL-2.0]
  spec.summary       = 'Provides binaries for tnef in an easily accessible package.'
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = 'tnef'
  spec.require_paths = %w[lib bin]

  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rake'
end
