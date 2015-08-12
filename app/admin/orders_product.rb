ActiveAdmin.register OrdersProduct do
   permit_params :quantity, :created_at, :updated_at, :product_id, :order_id
end
