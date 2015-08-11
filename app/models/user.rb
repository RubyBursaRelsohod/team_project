class User < ActiveRecord::Base
  has_many :comments
  has_many :orders

  validates :first_name, :last_name, presence: true, length: { :minimum => 2 }
  validates_each :first_name, :last_name do  |rec, attr, value |
    rec.errors.add(attr, "Must start with capital letter") if value =~/\A[a-z]/
  end

  validates :password, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :address, presence: true

  validates_format_of :email,
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
