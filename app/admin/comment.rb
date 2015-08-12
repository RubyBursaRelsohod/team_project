ActiveAdmin.register Comment, as: "ProductComment" do
  permit_params :body, :user_id, :product_id
end
