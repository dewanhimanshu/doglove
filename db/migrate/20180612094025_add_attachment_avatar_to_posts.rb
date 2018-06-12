class AddAttachmentAvatarToPosts < ActiveRecord::Migration[5.2]
  def self.up
    change_table :posts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :posts, :avatar
  end
end
