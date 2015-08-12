ActiveAdmin.register Comment do
  # Somehow enabling permit_params here breaks everything.
  # permit_params :body, :created_at, :updated_at, :user_id, :product_id
end
