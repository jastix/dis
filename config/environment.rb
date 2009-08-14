# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.3' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Specify gems that this application depends on and have them installed with rake gems:install
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"
  config.gem 'thoughtbot-clearance', :lib => 'clearance',:source  => 'http://gems.github.com', :version => '~> 0.7'
  #config.gem 'webrat'
  #config.gem 'cucumber'
  config.gem 'thoughtbot-factory_girl', :lib => 'factory_girl', :source => "http://gems.github.com"
  config.gem 'mislav-will_paginate', :version => '~> 2.3', :lib => 'will_paginate',:source => 'http://gems.github.com'
  #config.gem 'makandra-aegis', :lib => 'aegis', :source => 'http://gems.github.com'
  config.gem 'thoughtbot-paperclip', :lib => 'paperclip', :source => 'http://gems.github.com'
  config.gem 'nabeta-scribd_fu', :lib => 'scribd_fu', :source => 'http://gems.github.com'
  #config.gem "binarylogic-searchlogic",:lib     => 'searchlogic',:source  => 'http://gems.github.com', :version => '~> 2.0'
  #config.gem 'jscruggs-metric_fu',:version => '~> 1.1',:lib => 'metric_fu', :source => 'http://gems.github.com'
  #config.gem 'mdarby-scribd_fu', :lib => 'scribd_fu', :source => 'http://gems.github.com'
  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'UTC'

  DO_NOT_REPLY = "donotreply@example.com"
  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
end

