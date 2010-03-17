# require 'resque'
require 'resque/job_with_status'
require 'resque_scheduler'
require 'resque_mailer'
require 'resque/status_server'

# Reque config
rails_root = ENV['RAILS_ROOT'] || File.dirname(__FILE__) + '/../..'
rails_env = ENV['RAILS_ENV'] || 'development'

resque_config = YAML.load_file(rails_root + '/config/resque.yml')
Resque.redis = resque_config[rails_env]

# Schedule config :
# Resque.schedule = YAML.load_file(File.join(File.dirname(__FILE__), '../resque_schedule.yml'))

# # Status config :
# Resque::Status.expire_in = (24 * 60 * 60) # 24hrs in seconds

# Resque Mailer config :
Resque::Mailer.excluded_environments = [:test, :cucumber]


