# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#AppEjemplo21::Application.config.secret_key_base = '6a8a82fcf38a7479ac2faf04465a367c7689bf8e89e4659b28aeca5ecbb8c508e6a8e004f41a4c3fbb4b3116248060c85afd9b14484af8a96c796cd0e44e9bdb'
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

AppEjemplo21::Application.config.secret_key_base = secure_token