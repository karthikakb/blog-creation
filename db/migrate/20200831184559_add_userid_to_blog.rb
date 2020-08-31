class AddUseridToBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :user_id, :integer,after: :description
  end
end
