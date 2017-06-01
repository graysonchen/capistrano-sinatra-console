# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano/sinatra/console/version'

Gem::Specification.new do |spec|
  spec.name          = "capistrano-sinatra-console"
  spec.version       = Capistrano::Sinatra::Console::VERSION
  spec.authors       = ["Grayson Chen"]
  spec.email         = ["cgg5207@sina.com"]

  spec.summary       = %q{Remote sinatra console for capistrano}
  spec.description   = %q{Remote sinatra console for capistrano}
  spec.homepage      = "https://github.com/GraysonChen/capistrano-sinatra-console"
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'capistrano',         '>= 3.5.0', '< 4.0.0'
  spec.add_dependency 'sshkit-interactive', '~> 0.2.0'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
