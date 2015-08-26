class QuestionsController < ApplicationController
  def index
    @questions = Question.where(is_faq: true)
    respond_to do |format|
      format.json { render json: @questions }
    end
  end
end
