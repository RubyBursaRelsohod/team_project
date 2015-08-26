module DeviseHelper
  def devise_error_messages!
    return '' if resource.errors.empty?
    notify('error', resource.errors.full_messages)
  end
end
