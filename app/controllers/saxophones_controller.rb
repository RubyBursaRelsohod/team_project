class SaxophonesController < ApplicationController
  def index
    @saxophones = Product.every(:Saxophone)
                  .order('id')
                  .page(params[:page])
                  .per(10)

    respond_to do |format|
      format.html
      format.js {}
    end
  end
end
