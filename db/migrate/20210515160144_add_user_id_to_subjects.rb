class AddUserIdToSubjects < ActiveRecord::Migration[6.0]
  def change
    add_column :subjects, :user_id, :bigint
  end
end
