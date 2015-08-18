# The ActiveAdminDisplayable module is
# created for being included in all
# musical instruments models in order
# to display its names correctly in
# the ActiveAdmin panels, filters and
# drop-downs.
module ActiveAdminDisplayable
  # Method for displaying product's id
  # and name in AdminPanel. ActiveAdmin uses
  # the display_name method in models for its
  # drop-down inputs.
  def display_name
    id.to_s + '. ' + product.name
  end
end
