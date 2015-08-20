class PianosController < ApplicationController
  def index
    @pianos = Product.every(:Piano)
              .order('id')
              .page(params[:page])
              .per(10)

    respond_to do |format|
      format.html
      format.js
    end
  end
end
