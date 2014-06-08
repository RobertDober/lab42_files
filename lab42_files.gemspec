
base = File.dirname __FILE__
$:.unshift File.join( base, 'lib' )

require 'lab42/files/version'

Gem::Specification.new do | spec |
  spec.name        = 'lab42_files'
  spec.version     = Lab42::Files::VERSION
  spec.authors     = ['Robert Dober']
  spec.email       = %w{ robert.dober@gmail.com }
  spec.description = %{Files but Lazy}
  spec.summary     = %{Files but Lazy}
  spec.homepage    = %{https://github.com/RobertDober/lab42_files}
  spec.license     = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{\Atest|\Aspec|\Afeatures|\Ademo/})
  spec.require_paths = %w{lib}

  # spec.post_install_message = %q{ }


  spec.required_ruby_version = '>= 2.1.1'
  spec.required_rubygems_version = '>= 2.2.2'

  spec.add_dependency 'forwarder2', '~> 0.2'
  spec.add_dependency 'ruby_parser', '~> 3.6'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry', '~> 0.9'
  spec.add_development_dependency 'pry-debugger', '~> 0.2'
  spec.add_development_dependency 'ae', '~> 1.8'
  spec.add_development_dependency 'qed', '~> 2.9'
  
end
