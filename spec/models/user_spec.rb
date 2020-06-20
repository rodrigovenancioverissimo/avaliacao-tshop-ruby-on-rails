# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'create' do
    user = build(:user)
    expect { user.save! }.to raise_error("Validation failed: Business can't be blank")
    user.business = build(:business)
    expect { user.save }.to change { User.count }.by(1)
  end

  it 'update' do
    user = build(:user)
    user.business = build(:business)
    expect { user.save }.to change { User.count }.by(1)
    user.update(first_name: 'New Name')
    expect(user.first_name).to eq('New Name')
  end
end
