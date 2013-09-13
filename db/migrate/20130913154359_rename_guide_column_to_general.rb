class RenameGuideColumnToGeneral < ActiveRecord::Migration
  def change
    rename_column :entries, :guide_id, :general_id
  end
end
