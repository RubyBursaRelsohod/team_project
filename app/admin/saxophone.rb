ActiveAdmin.register Saxophone do
  permit_params :saxophone_type, :tonality, :keys_number, :low_key, :high_key,
                :bell_diametr, :bell_engraved, :body_material,
                :created_at, :updated_at, :product_id
end
