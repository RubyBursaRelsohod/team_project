class GuitarsController < ApplicationController
  def index
    @guitars = Product.every(:Guitar)
               .order('id')
               .page(params[:page])
               .per(10)

    respond_to do |format|
      format.html
      format.js
    end
  end
end