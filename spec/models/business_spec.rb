# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Business, type: :model do
  it 'create' do
    business = build(:business)
    expect { business.save! }.to raise_error("Validation failed: User can't be blank")
    business.user = build(:user)
    expect { business.save }.to change { Business.count }.by(1)
  end

  it 'update' do
    business = build(:business)
    business.user = build(:user)
    expect { business.save }.to change { Business.count }.by(1)
    business.update(name: 'New Name')
    expect(business.name).to eq('New Name')
  end
end
