class FixColumnName < ActiveRecord::Migration[5.2]
  def change
  	rename_column :posts, :userid, :user_id
  end
end
