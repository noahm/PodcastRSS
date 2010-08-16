# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_PodcastRSS_session',
  :secret => '226a2468b61ae84447519028635f8b0f7fe55cd32d25cec275b3ec41dc0cb34b67a5fdf5c24bba08add4ed9792984e689b736b3fa5fd464ffb810148783dc512'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
