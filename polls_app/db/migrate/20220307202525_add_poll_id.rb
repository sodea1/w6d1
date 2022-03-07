class AddPollId < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :poll_id, :integer, null: false)
  end
end
