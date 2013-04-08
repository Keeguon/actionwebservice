## --------------------------------------------------------------------------------
## NOTE:
## This file is not really used at the moment - the *REAL* copy is inside 
## the Rakefile and invoked via 'rake package'
## --------------------------------------------------------------------------------
Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'actionwebservice'
  s.summary = "Web service support for Action Pack."
  s.description = %q{Adds WSDL/SOAP and XML-RPC web service support to Action Pack}
  s.version = "2.3.6"

  s.author = "Laurence A. Lee, Leon Breedt, Kent Sibilev, Felix Bellanger"
  s.email = "rubyjedi@gmail.com, bitserf@gmail.com, ksibilev@yahoo.com, felix.bellanger@gmail.com"
  s.homepage = "https://github.com/keeguon/actionwebservice/"

  s.add_dependency('activesupport', '~> 2.3.0')
  s.add_dependency('actionpack',    '~> 2.3.0')
  s.add_dependency('activerecord',  '~> 2.3.0')

  s.has_rdoc = true
  s.requirements << 'none'
  s.require_path = 'lib'
  s.autorequire = 'actionwebservice'

  s.files = [ "Rakefile", "setup.rb", "README", "TODO", "CHANGELOG", "MIT-LICENSE" ]
  s.files = s.files + Dir.glob( "examples/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
  s.files = s.files + Dir.glob( "lib/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
  s.files = s.files + Dir.glob( "test/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
  s.files = s.files + Dir.glob( "generators/**/*" ).delete_if { |item| item.match( /\.(svn|git)/ ) }
end
