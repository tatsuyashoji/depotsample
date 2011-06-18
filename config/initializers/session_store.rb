# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_depotsample_session',
  :secret      => 'ce29fd79465cefd8deaa79a3e2fcbeccf3a17bd27ebdd784d3b29f5945b624d10af3e6b6b2dc144e8b4c8e01f6c86c66229981b38600a58ac87f1c24da76f5a3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
