authorization do
  role :guest do
    # add permissions for guests here, e.g.
    has_permission_on [:products, :comments, :violins, :products_photos,
                       :products_sounds, :products_categories,
                       :guitars, :pianos, :saxophones], to: :read
  end

  # permissions on other roles, such as
  role :admin do
    has_permission_on [:products, :comments, :orders, :admin_users, :violins,
                       :order_statuses, :guitars, :pianos, :saxophones,
                       :products_categories, :orders_products, :products_photos,
                       :products_sounds, :users], to: :manage
  end

  role :user do
    includes :guest
    has_permission_on :comments, to: [:read, :create]
    has_permission_on :orders, to: :manage do
      if_attribute user_id: is { user.id }
    end
  end
  # See the readme or GitHub for more examples
end

privileges do
  # default privilege hierarchies to facilitate RESTful Rails apps
  privilege :manage, includes: [:create, :read, :update, :delete]
  privilege :read, includes: [:index, :show]
  privilege :create, includes: :new
  privilege :update, includes: :edit
  privilege :delete, includes: :destroy
end
