# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item, type: :model do
  it 'create' do
    item = build(:item)
    expect { item.save! }.to raise_error("Validation failed: Business can't be blank")
    item.business = build(:business)
    expect { item.save }.to change { Item.count }.by(1)
  end

  it 'update' do
    item = build(:item)
    item.business = build(:business)
    expect { item.save }.to change { Item.count }.by(1)
    item.update(name: 'New Name')
    expect(item.name).to eq('New Name')
    expect { item.update!(name: '') }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
