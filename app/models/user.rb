class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
  has_many :comments
  has_many :orders

  validates :first_name, :last_name, presence: true, length: { :minimum => 2 }
  validates_each :first_name, :last_name do  |rec, attr, value |
    rec.errors.add(attr, "Must start with capital letter") if value =~/\A[a-z]/
  end

  validates :password, presence: true, length: { minimum: 3 }
  validates :email, presence: true#, uniqueness: true
                    # format: {
                    #   with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
                    # }
  validates :phone, presence: true
  validates :address, presence: true
end
