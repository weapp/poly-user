class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :account_id
      t.string :account_type
      t.string :slug
      t.string :name

      t.timestamps
    end
    add_index :users, :slug, unique: true
  end
end
