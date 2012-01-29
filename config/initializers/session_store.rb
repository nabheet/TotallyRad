# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_TotallyRad_session',
  :secret      => '79e127736fc38a863ed239862ab2b08a471760846dcf0f8d4dd1796ac851b6ed9170435ca743169bfdf971b130b33d04612e181aac62d217b5e06452d367d9e5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
