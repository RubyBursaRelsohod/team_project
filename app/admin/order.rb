ActiveAdmin.register Order do
  permit_params :delivery_date, :creation_date, :payment_type, :delivery_type,
  :created_at, :updated_at, :order_status_id, :user_id
end
