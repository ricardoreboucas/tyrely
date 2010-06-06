# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tyrely_session',
  :secret      => '97be4b385aac38aa290044491dba4835e56e457caaa78fdc27279da4e937ccca6cfac5f2408baffc05b0532f7cd1b5e67de831fc9898997f45172773d62e0967'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
