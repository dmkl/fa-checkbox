# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fa-checkbox/version'

Gem::Specification.new do |spec|
  spec.name          = "fa-checkbox"
  spec.version       = FaCheckbox::VERSION
  spec.authors       = ["Dmitry Klimensky"]
  spec.email         = ["klimensky@gmail.com"]
  spec.summary       = %q{Font Awesome checkboxes and radio buttons in Rails applications.}
  spec.description   = %q{This gem replaces standard checkboxes and radio buttons with Font Awesome characters making them look the same across all browsers.}
  spec.homepage      = "https://github.com/dmkl/fa-checkbox"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'font-awesome-rails', '>= 3.0'
end
