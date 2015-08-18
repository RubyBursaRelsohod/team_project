ActiveAdmin.register Violin do
  permit_params :weight, :body_material, :size, :string_count, :bow_included,
                :color, :created_at, :updated_at, :product_id

  # controller do
  #   def permitted_params
  #     params.permit!
  #   end
  # end

  index do
    selectable_column
    id_column
    column :product_id
    column :weight
    column :body_material
    column :size
    column :string_count
    column :bow_included
    column :color
    column :created_at
    column :updated_at
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :phone
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs "Violin Details" do
      f.input :product
      f.input :weight
      f.input :body_material
      f.input :size
      f.input :string_count
      f.input :bow_included
      f.input :color
    end
    f.actions
  end
end
