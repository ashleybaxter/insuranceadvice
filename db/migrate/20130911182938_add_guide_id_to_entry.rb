class AddGuideIdToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :guide_id, :integer
  end
end
