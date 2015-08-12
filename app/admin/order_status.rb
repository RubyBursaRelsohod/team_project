ActiveAdmin.register OrderStatus do
   permit_params :quantity, :created_at, :updated_at, :product_id, :order_id
end
