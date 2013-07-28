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

Gcpride::Application.config.secret_key_base = '23182c0c33577ad4f0e5698b839132614c3b6189ab9f6d9bab1f5c385dc764dcda4614e4f00817db17152899d1a416501114899a12cb1fa8f26ef715fd72246b'
