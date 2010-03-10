# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails_root_session',
  :secret      => 'f8354a23bb2bfc992ff40fe86f4e1db0431cdab9810dcd0a6a71dd770e3eb7e7b21a14930825291037f8641ebb4ebc3a33084866f6fa86b48240f5c3e6a11daa'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
