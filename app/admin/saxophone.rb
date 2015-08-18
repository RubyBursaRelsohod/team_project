ActiveAdmin.register Saxophone do
  permit_params :saxophone_type, :tonality, :keys_number, :low_key, :high_key,
                :bell_diametr, :bell_engraved, :body_material,
                :created_at, :updated_at, :product_id

  index do
    selectable_column
    id_column
    column :saxophone_type
    column :tonality
    column :keys_number
    column :bell_engraved
    column :bell_diametr
    actions
  end

  filter :saxophone_type
  filter :tonality
  filter :keys_number
  filter :low_key
  filter :high_key
  filter :bell_diametr
  filter :bell_engraved
  filter :body_material
  filter :product
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs "Saxophone Details" do
      f.input :product
      f.input :saxophone_type
      f.input :tonality
      f.input :keys_number
      f.input :low_key
      f.input :high_key
      f.input :bell_diametr
      f.input :body_material
      f.input :bell_engraved
    end
    f.actions
  end
end
