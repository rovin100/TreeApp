class HomesController < ApplicationController
	before_filter :authenticate_user!
	def index
		@sub_users = current_user.sub_users.includes(categories: [sub_categories: [:topics]])
	end
end
