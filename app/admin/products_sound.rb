ActiveAdmin.register ProductsSound do
  permit_params :sound, :created_at, :updated_at, :product_id

form :html => {:multipart => true} do |f|
  f.inputs "Product Details" do
    f.input :product
    f.input :sound, :required => false, :as => :file
    # Will preview the image when the object is edited
  end
  f.actions
 end

show do |ad|
  attributes_table do
    row :product
    row :sound do
      audio_tag(ad.sound.url.split('?')[0], autoplay: false, controls: true)
    end
    # Will display the image on show object page
  end
 end

end
