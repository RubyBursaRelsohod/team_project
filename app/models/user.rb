# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  first_name             :string
#  last_name              :string
#  password               :string           default(""), not null
#  email                  :string           default(""), not null
#  phone                  :string           default(""), not null
#  address                :string           default(""), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#
# User model
class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable
  has_many :comments
  has_many :orders
  has_many :messages, foreign_key: :sender_id

  validates :first_name, :last_name, presence: true, length: { minimum: 2 }
  validates_each :first_name, :last_name do |rec, attr, value|
    rec.errors.add(attr, "Must start with capital letter") if value =~ /\A[a-z]/
  end

  validates :password, :password_confirmation,
            presence: true, length: { minimum: 3 }, on: :create
  validates :password, confirmation: true
  validates :email, presence: true, uniqueness: true,
                    format: {
                      with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
                    }
  validates :phone, presence: true
  validates :address, presence: true

  # Method for displaying user's first_name
  # and last_name in AdminPanel. ActiveAdmin uses
  # the display_name method in models for its
  # drop-down inputs.
  def display_name
    id.to_s + '. ' + full_name
  end

  def full_name
    first_name + ' ' + last_name
  end

  def role_symbols
    (roles || []).map { |r| r.title.to_sym }
  end

  def after_confirmation
    WelcomeMailer.welcome_letter(self).deliver
  end
end
