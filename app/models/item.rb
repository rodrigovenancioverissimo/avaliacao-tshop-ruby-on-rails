# frozen_string_literal: true

class Item < ActiveRecord::Base
  belongs_to :business

  validates :name, :price, :business, presence: true
  validates :name, length: { minimum: 3, maximum: 64 }
  validates :price, length: { minimum: 0, maximum: 1_000_000_000 }, numericality: true
end
