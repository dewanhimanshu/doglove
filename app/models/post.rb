Rails.application.config.active_record.belongs_to_required_by_default = false
class Post < ApplicationRecord
	belongs_to :user 
end
