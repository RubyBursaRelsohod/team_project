class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    respond_to :json
  end
end
