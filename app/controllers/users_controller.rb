# Controller for users' profiles
class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  before_filter :disable_footer, only: [:show]

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
