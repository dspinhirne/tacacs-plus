# build install with:  gem build tacacsplus.gemspec
# install with: tacacsplus*.gem
Gem::Specification.new do |s|
	s.name      =   "tacacsplus"
	s.version   =   "1.0.0"
	s.date      =   "2024-05-03"
	s.author    =   "Dustin Spinhirne"
	s.summary   =   "A Ruby library for TACACS+."
	s.homepage  =   "https://github.com/dspinhirne/tacacs-plus"
	s.files = Dir['lib/*.rb'] + Dir['test/*']
	s.require_paths = ['lib']
	s.extra_rdoc_files  =   ["README.md", "LICENSE"]
	s.license  =   'GPLv3'
end 

