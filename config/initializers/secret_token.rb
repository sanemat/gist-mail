# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
secret_token = Rails.env.production? ? ENV["SECRET_TOKEN"]
                                     : '90c6b42ceee8555048a5542a1e4032c7b14bdf487777f36474316474e88a01604478db2ee23795551c70e3116917ac5ff73a6238612c53f624248efb5afbd770'

GistMail::Application.config.secret_key_base = secret_token
Devise.secret_key = secret_token
