class AddUseridToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :userid, :integer
  end
end
