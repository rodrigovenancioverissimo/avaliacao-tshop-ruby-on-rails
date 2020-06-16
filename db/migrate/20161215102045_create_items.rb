class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string    :name
      t.bigint    :price
      t.integer   :business_id
    end

    add_column :items, :created_at, :timestamptz
    add_column :items, :updated_at, :timestamptz

    add_index :items, :business_id
  end
end
