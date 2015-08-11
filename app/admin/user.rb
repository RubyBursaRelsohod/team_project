ActiveAdmin.register User do
  permit_params :first_name, :last_name, :password, :email, :phone, :address,
  :created_at, :updated_at
end
