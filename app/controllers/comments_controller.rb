class CommentsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to @product, notice: 'Comment Created!'
    else
      redirect_to @product, notice: 'Something went wrong...'
    end
  end

  def show
  end

  def edit
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
  end

  def update
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
    respond_to do |format|
      if @comment.update_attributes(comment_params)
        format.html { redirect_to @comment.product, notice: 'Comment Updated!' }
      else
        format.html do
          redirect_to @comment.product, notice: 'Something went wrong...'
        end
      end
    end
  end

  def destroy
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
    @comment.destroy!
    redirect_to @product, notice: 'Comment Deleted!'
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
