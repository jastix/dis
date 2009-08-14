# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dis_session',
  :secret      => 'd07d39ee9f3fe752cc118792e1de958032bb99332aaaff86b60af7440155b165f3fb4c03caf4d3216fe1aac969b35be10747dfa8022ad8fa2213314c7c1df6f1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
