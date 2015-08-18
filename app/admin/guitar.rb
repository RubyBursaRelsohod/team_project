ActiveAdmin.register Guitar do
  permit_params :frets, :chords, :dimensions, :weight, :is_digital,
                :created_at, :updated_at, :product_id
end
