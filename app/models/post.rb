Rails.application.config.active_record.belongs_to_required_by_default = false
class Post < ApplicationRecord
	belongs_to :user 
	 acts_as_votable
	has_many :likeproducts
	 has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "https://upload.wikimedia.org/wikipedia/commons/4/47/Comic_image_missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
