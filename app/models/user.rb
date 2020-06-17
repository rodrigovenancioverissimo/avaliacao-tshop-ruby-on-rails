class User < ActiveRecord::Base
  
  has_secure_password
  
  has_one :business, inverse_of: :user
  accepts_nested_attributes_for :business, allow_destroy: true

  validates :first_name,  presence: true
  validates :last_name,  presence: true
  validates :email, presence: true
end
