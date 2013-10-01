class AddHomeIdToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :home_id, :integer
  end
end
