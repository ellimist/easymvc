require "easymvc/version"

module Easymvc
  class Application
  	def call(env)
  		[200, {"Content-type"=>"text/html"},["Hello World!"]]
  	end
  end
end
