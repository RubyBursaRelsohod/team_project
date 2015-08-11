ActiveAdmin.register Piano do
  permit_params (:color, :keys_number, :black_keys_surface, :white_keys_surface,
  :is_digital, :created_at, :updated_at, :product_id)
end
