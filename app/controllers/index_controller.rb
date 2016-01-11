class IndexController < ApplicationController

	def index
	    if user_signed_in?

	    else
	      render template: "home/index"
	    end
	end

end
