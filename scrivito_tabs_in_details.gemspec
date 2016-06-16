require File.expand_path('../lib/scrivito_tabs_in_details/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'scrivito_tabs_in_details'
  s.version     = ScrivitoTabsInDetails::VERSION

  s.authors     = ['Scrivito']
  s.email       = ['support@scrivito.com']
  s.homepage    = 'https://scrivito.com'

  s.summary     = 'Simple tabs template helper for details dialogs in Scrivito CMS'
  s.description = 'This gem provides a template helper for creating simple tabs in details dialogs in Scrivito CMS.'
  s.license     = 'LGPL-3.0'

  s.files = Dir['{app,lib}/**/*', 'LICENSE', 'Rakefile']

  s.add_dependency 'bundler'
  s.add_dependency 'scrivito'

  s.add_development_dependency 'rake'
end
