# require the rack gem
require 'rack'

# Create a new class called App
class App

  # From the rack documentation, it's a Ruby object that responds to "call", 
  # and takes in one argument -- env
  def call(env)
    puts env
    # Again from the docs, rack returns an array of three values 
    # -- the status, headers, and body
    # So this is rack returning from WEBRick a status of 200 OK, with
    # content-type text/html in the header and "Hello World" as the content.
    [200, {"Content-Type" => "text/html"}, ['Hello World']]
  end
end

run App.new
