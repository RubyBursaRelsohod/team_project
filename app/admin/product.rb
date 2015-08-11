ActiveAdmin.register Product do
  permit_params :name,
    :price,
    :country,
    :company,
    :quantity,
    :created_at,
    :updated_at,
    :products_category_id
end
