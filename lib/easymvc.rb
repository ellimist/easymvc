require "easymvc/version"
require "easymvc/controller.rb"
require "easymvc/utils.rb"
require "easymvc/dependencies.rb"
require "easymvc/routing.rb"

module Easymvc
  class Application
  	def call(env)
  		return [ 500, {}, [] ] if env["PATH_INFO"] == "/favicon.ico"
      get_rack_app(env).call(env)
  	end

  end
end
