ActiveAdmin.register User do
  index do
    column :email
    column :password
    column :password_confirmation
    default_actions
  end
end
