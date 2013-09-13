class AddLandlordIdToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :landlord_id, :integer
  end
end
