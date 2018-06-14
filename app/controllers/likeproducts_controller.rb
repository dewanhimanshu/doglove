class LikeproductsController < ApplicationController

	def create(u_id,p_id)
		Likeproduct.create(
			user_id = i_id,
			post_id = p_id,
			)
	 redirect_to :back
	end

end
