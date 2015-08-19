ActiveAdmin.register ProductsPhoto do
  permit_params :photo, :created_at, :updated_at, :product_id

form :html => {:multipart => true} do |f|
  f.inputs "Product Details" do
    f.input :product
    f.input :photo, :required => false, :as => :file
    # Will preview the image when the object is edited
  end
  f.actions
 end

show do |ad|
  attributes_table do
    row :product
    row :photo do
      image_tag(ad.photo.url(:medium))
    end
    # Will display the image on show object page
  end
 end

end
