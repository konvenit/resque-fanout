$:.push File.expand_path("../lib", __FILE__)
require "resque-fanout/version"

Gem::Specification.new do |s|
  s.name              = "resque-fanout"
  s.version           = ResqueFanout::VERSION
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Resque Plugin for fanout routing to multiple queues"
  s.homepage          = "http://github.com/konvenit/resque-pubsub"
  s.email             = "ich@derfred.com"
  s.authors           = [ "Frederik Fix" ]
  s.has_rdoc          = false

  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("test/**/*")

  s.require_path      = 'lib'

  s.description       = <<desc
A Resque plugin that provides endpoints which distributes Jobs submitted to them to (multiple) subscribing queues. Useful for loosely coupled inter-application communication.
desc

  s.add_development_dependency "rspec", "~> 2.3.0"
  s.add_development_dependency "bundler", ">= 1.0.0"

  s.add_runtime_dependency %q<redis>, [">= 2.0.1"]
  s.add_runtime_dependency %q<resque>, [">= 1.19.0"]
end
