# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railsair_session',
  :secret      => '254014c2bac1e970f7cdb51e0ff22e596f3ea7a52204b8d0378074c16ab49b366fea63b6d505abbaeacb27cf6eeebcdad52350ea3b50e003692bb74f51001f3f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
