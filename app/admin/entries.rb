ActiveAdmin.register Entry do
  index do
    column :title
    column :description
    column :landlord_id
    column :guide_id
  end
end
