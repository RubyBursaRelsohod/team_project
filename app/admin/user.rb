ActiveAdmin.register User do
  permit_params :first_name, :last_name, :email, :phone, :address,
                :password, :password_confirmation,
                :created_at, :updated_at

  controller do
    def update
      if params[:user][:password].blank? &&
         params[:user][:password_confirmation].blank?
        params[:user].delete('password')
        params[:user].delete('password_confirmation')
      end
      super
    end
  end

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    column :phone
    column :address
    column :created_at
    column :updated_at
    actions
  end

  filter :email
  filter :first_name
  filter :last_name
  filter :phone
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs "User Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :phone
      f.input :address
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
