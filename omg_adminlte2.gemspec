
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omg_adminlte2/version"

Gem::Specification.new do |spec|
  spec.name          = 'omg_adminlte2'
  spec.version       = OmgAdminlte2::VERSION
  spec.authors       = ['Serghei Topor']
  spec.email         = ['serghei.topor@gmail.com']
  spec.summary       = 'Integrates AdminLTE theme with the Rails asset pipeline'
  spec.homepage      = 'https://bitbucket.org/orientalmedia/omg_adminlte2'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
    #
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "#{spec.homepage}/src"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
end
