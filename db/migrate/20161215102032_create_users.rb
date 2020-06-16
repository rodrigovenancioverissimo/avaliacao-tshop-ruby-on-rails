class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text     :email
      t.text     :password_digest
      t.string   :first_name
      t.string   :last_name
    end

    add_column :users, :created_at, :timestamptz
    add_column :users, :updated_at, :timestamptz

    add_index :users, :email
  end
end
