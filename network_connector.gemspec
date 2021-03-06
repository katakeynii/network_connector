# frozen_string_literal: true

require_relative "lib/network_connector/version"

Gem::Specification.new do |spec|
  spec.name = "network_connector"
  spec.version = NetworkConnector::VERSION
  spec.authors = ["Mohamed Camara Gueye"]
  spec.email = ["katakeynii@gmail.com"]

  spec.summary = "This gem helps connect to a private network by accessing it"
  spec.description = "You might be working in a big company with high security policies. Where you need to connect to and login into a web page in order to have access to internet. This libray will helps you automate the connection so that you dont have to always open the website and conenct manually"
  spec.homepage = "https://github.com/katakeynii/network_connector"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/katakeynii/network_connector/blob/main/CHANGELOG.md"
  spec.metadata["changelog_uri"] = "https://github.com/katakeynii/network_connector/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  # spec.bindir = "exe"
  # spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.executables = ['workconnektor']
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  # spec.add_dependency  "open-uri" , "~> 0.2.0"
  # spec.add_dependency  "watir", "~> 7.1.0"
  # spec.add_dependency  "webdrivers", "~> 5.0.0"
  # spec.add_dependency  "dotenv", ">= 0"
  # spec.add_dependency  "net-ping", ">= 0"
  # spec.add_dependency  "colorize", ">= 0"
  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
