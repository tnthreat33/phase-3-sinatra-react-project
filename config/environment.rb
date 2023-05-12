# This is an _environment variable_ that is used by some of the Rake tasks to determine
# if our application is running locally in development, in a test environment, or in production
ENV['RACK_ENV'] ||= "development"

# Require in Gems
require 'bundler/setup'
Bundler.require(:default, ENV['RACK_ENV'])

# Require in all files in 'app' directory
require_all 'app'

#Overall, this code snippet sets the RACK_ENV environment variable if it hasn't 
#been set before, loads the required gems based on the environment, and 
#requires all the files in the 'app' directory, allowing the application
# to set up its environment and load the necessary code.