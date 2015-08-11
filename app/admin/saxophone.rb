ActiveAdmin.register Saxophone do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end
  permit_params :type, :tonality, :keys_number, :low_key, :high_key, 
  :bell_diametr, :bell_engraved, :body_material, :created_at, :updated_at, 
  :product_id
end
