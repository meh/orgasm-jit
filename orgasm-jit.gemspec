Kernel.load 'lib/orgasm/jit/version.rb'

Gem::Specification.new {|s|
	s.name         = 'orgasm-jit'
	s.version      = Orgasm.version
	s.author       = 'meh.'
	s.email        = 'meh@paranoici.org'
	s.homepage     = 'http://github.com/meh/orgasm-jit'
	s.platform     = Gem::Platform::RUBY
	s.summary      = 'JIT based on orgasm.'

	s.files         = `git ls-files`.split("\n")
	s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
	s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.require_paths = ['lib']

	s.add_dependency 'orgasm'
	s.add_dependency 'ffi'
	s.add_dependency 'ffi-extra'

	s.add_development_dependency 'rake'
	s.add_development_dependency 'rspec'
}
