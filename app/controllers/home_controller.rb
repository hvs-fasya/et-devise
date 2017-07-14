class HomeController < ApplicationController

	def index
		render inline: "<p>Hallo Devise</p>"
	end
end
