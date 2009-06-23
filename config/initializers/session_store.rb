# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_eve_notifier_session',
  :secret      => '26594327397b85f2248b97da4e5abb71ec9b47bcdabb8b4a0d7294550388c2e40d82d613d57c8b1350eb10c0e78c9951165b238b21f63de48f8b52313987dc19'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
