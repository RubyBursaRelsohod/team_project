class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :set_global_variables

  def after_sign_in_path_for(*)
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] },
      :first_name, :last_name, :email, :password,
      :password_confirmation, :phone, :address)
    }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] },
      :first_name, :last_name, :phone, :address)
    }
  end

  # Sets global variables that
  # are needed all over the app.
  def set_global_variables
    # Save 4 most expensive instruments
    # in the class variable to display it
    # in the navbar
    @ad_instruments = []
    %w(Guitar Saxophone Piano Violin).each do |instrument|
      @ad_instruments << Product.most_expensive(instrument)
    end

    @instruments = {
      violins: Product.every(:Violin),
      pianos: Product.every(:Piano),
      guitars: Product.every(:Guitar),
      saxophones: Product.every(:Saxophone)
    }
  end

  private

  def after_update_path_for(*)
    session["user_return_to"] || root_path
  end
end
