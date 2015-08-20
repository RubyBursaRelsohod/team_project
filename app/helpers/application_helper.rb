# Some methods that can be used
# all over the app.
module ApplicationHelper
  # Return the shortened description
  # of the product.
  def shorten(product, num)
    product.description.truncate(num, separator: ' ')
  end

  # Return the well formated
  # price of the product.
  def to_price(product)
    number_to_currency(product.price, unit: '₴')
  end

  # Override Devise resource helpers
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
