# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_resque_mailer_test_session',
  :secret      => 'b3e3991adf738f588858b286d17e2fd9a2d15c0ab5f8fe9b77fd918d3c082c65e21edf10f13772616840acb1912048fce6f11b1a7bbc9f07fdcf73cc2cf44ba3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
