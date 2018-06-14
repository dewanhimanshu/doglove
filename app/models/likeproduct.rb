Rails.application.config.active_record.belongs_to_required_by_default = false
class Likeproduct < ApplicationRecord
	 belongs_to :User
	 belongs_to :Post
end
