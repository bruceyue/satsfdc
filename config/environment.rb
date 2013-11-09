# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Satsfdc::Application.initialize!

Rails.logger = Logger.new(STDOUT)

Encryptor.default_options.merge!(:key => Satsfdc::Application.config.secret_token)