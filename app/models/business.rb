# frozen_string_literal: true

class Business < ActiveRecord::Base
  belongs_to :user

  has_many :items, inverse_of: :business

  validates :user, presence: true
end
