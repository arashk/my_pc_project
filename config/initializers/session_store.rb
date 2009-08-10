# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_views_demo_session',
  :secret      => '9fa6794e2ce08ea4237fbf436e3851b6a892530bea8a5ec16973c510b9b8640d359514aedd4be606efd7c58ed29970521e423c8f1fbcb9a69276e50de6f51db8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
