# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teamspeak3/version'

Gem::Specification.new do |gem|
  gem.name          = 'teamspeak3-ruby'
  gem.version       = Teamspeak3::VERSION
  gem.date          = Date.today.to_s
  gem.authors       = ['Humenius']
  gem.email         = ['contact@humenius.me']

  gem.summary       = 'Library for accessing TeamSpeak 3 SSH API'
  gem.description   = "This library provides easy accessibility for your TeamSpeak 3 servers' SSH API.
                       It allows you to maintain your virtual servers at ease."
  gem.homepage      = 'https://github.com/humenius/teamspeak3-ruby'

  gem.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  gem.add_development_dependency 'bundler', '~> 1.15'
  gem.add_development_dependency 'rake', '~> 10.0'
  gem.add_development_dependency 'minitest', '~> 5.0'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
=begin
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end
=end

=begin
  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
=end
end
