ActiveAdmin.register Comment, as: "ProductComment" do
  permit_params :user_id, :product_id, :body

  index do
    selectable_column
    id_column
    column :user
    column :product
    column :body
    actions
  end

  filter :user
  filter :product
  filter :created_at

  form do |f|
    f.inputs "Edit Product Comment" do
      f.input :user
      f.input :product
      f.input :body
    end
    f.actions
  end
end
