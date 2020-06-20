# frozen_string_literal: true

FactoryBot.define do
  factory :business do
    name { Faker::Company.name }
    address { Faker::Address.street_address }
    city { Faker::Address.city }
  end
end
