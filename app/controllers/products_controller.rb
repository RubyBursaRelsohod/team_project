class ProductsController < ApplicationController
  def show
    product = Product.find(params[:id])
    photos = ProductsPhoto.where(product: product)
    case product.products_category.name
    when 'Violin'
      @product = [product, Violin.where(product: product).first, photos]
    when 'Guitar'
      @product = [product, Guitar.where(product: product).first, photos]
    when 'Saxophone'
      @product = [product, Saxophone.where(product: product).first, photos]
    when 'Piano'
      @product = [product, Piano.where(product: product).first, photos]
    end
    @comment = Comment.new
    @comments = Comment.where(product_id: product.id).order('created_at DESC')
  end
end
