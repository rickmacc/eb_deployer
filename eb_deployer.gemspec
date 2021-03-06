# -*- encoding: utf-8 -*-
require File.expand_path('../lib/eb_deployer/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["wpc", "betarelease"]
  gem.email         = ["alex.hal9000@gmail.com", "sudhindra.r.rao@gmail.com"]
  gem.description   = %q{For automate blue green deployment flow on Elasti Beanstalk.}
  gem.summary       = %q{Low friction deployments should be a breeze. Elastic Beanstalk provides a great foundation for performing Blue-Green deployments, and EbDeployer add a missing top to automate the whole flow out of box.}
  gem.homepage      = "https://github.com/ThoughtWorksStudios/eb_deployer"

  gem.add_runtime_dependency 'aws-sdk'
  gem.add_development_dependency 'minitest'

  gem.files         = `git ls-files`.split($\).reject {|f| f =~ /^samples\// }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "eb_deployer"
  gem.require_paths = ["lib"]
  gem.version       = EbDeployer::VERSION
end
