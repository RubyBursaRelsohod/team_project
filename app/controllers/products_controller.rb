class ProductsController < ApplicationController
  def show
    product = Product.find(params[:id])
    photos = ProductsPhoto.where(product: product)
    sounds = ProductsSound.where(product: product)
    case product.products_category.name
    when 'Violin'
      @product = [product, Violin.where(product: product).first, photos, sounds]
    when 'Guitar'
      @product = [product, Guitar.where(product: product).first, photos, sounds]
    when 'Saxophone'
      @product = [product, Saxophone.where(product: product).first, photos, sounds]
    when 'Piano'
      @product = [product, Piano.where(product: product).first, photos, sounds]
    end
    @comment = Comment.new
    @comments = Comment.where(product_id: product.id).order('created_at DESC')
  end
end
