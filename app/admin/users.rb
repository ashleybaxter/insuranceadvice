ActiveAdmin.register User do
  index do
    column :email
    column :password
    column :password_confirmation
  end
  default_actions
end
