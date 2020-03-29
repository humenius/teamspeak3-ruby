# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'teamspeak3/version'

Gem::Specification.new do |spec|
  spec.name          = 'teamspeak3-ruby'
  spec.version       = Teamspeak3::VERSION
  spec.authors       = ['Humenius']
  spec.email         = ['contact@humenius.me']

  spec.summary       = 'Library for accessing TeamSpeak 3 SSH API'
  spec.description   = "This library provides easy accessibility for your TeamSpeak 3 servers' SSH API.
                       It allows you to maintain your virtual servers at ease."
  spec.homepage      = 'https://github.com/humenius/teamspeak3-ruby'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.add_dependency 'net-ssh'
  spec.add_development_dependency 'bundler', '~> 2.1.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'rake', '>= 12.3.3'
end
