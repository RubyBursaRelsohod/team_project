ActiveAdmin.register Violin do
  permit_params :weight, :body_material, :size, :string_count, :bow_included,
                :color, :created_at, :updated_at, :product_id
end
