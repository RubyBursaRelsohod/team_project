class ViolinsController < ApplicationController
  def index
    @violins = Product.every(:Violin)
               .order('id')
               .page(params[:page])
               .per(10)

    respond_to do |format|
      format.html
      format.js {}
    end
  end
end
