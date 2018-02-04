# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
if [Rails::VERSION::MAJOR, Rails::VERSION::MINOR] == [4, 0]
  Dummy::Application.config.secret_key_base = '5ddc7b5adeedc4d38eafc22d5e866a22e5d9aa3d8dc1cb34e219d7e823df2c0fc6573251a69265f6b41413bdf7a8dc0222f4662e6fd14d2bc0eeb34a844c254b'
end
