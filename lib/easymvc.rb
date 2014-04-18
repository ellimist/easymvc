require "easymvc/version"
require "easymvc/controller.rb"
require "easymvc/utils.rb"
require "easymvc/dependencies.rb"

module Easymvc
  class Application
  	def call(env)
  		# env["PATH_INFO"] => "/pages/about" => PagesController.send(:about)
  		# env["REQUEST_METHOD"] => GET/POST

  		if env["PATH_INFO"] == "/"
  			return [ 302, {"Location"=>"/my_pages/about"}, [] ]
  		end

  		if env["PATH_INFO"] == "/favicon.ico"
  			return [ 500, {}, [] ]
  		end

  		controller_class, action = get_controller_and_action(env)
      controller = controller_class.new(env)
  		response = controller.send(action)

      if controller.get_response
        controller.get_response
      else
        controller.render(action)
        controller.get_response
      end

  	end

  	def get_controller_and_action(env)
  		_, controller_name, action = env["PATH_INFO"].split("/")
  		controller_name = controller_name.to_camel_case + "Controller"
  		[ Object.const_get(controller_name), action ]
  	end
  end
end
