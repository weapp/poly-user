class CreateOrganizationsPeople < ActiveRecord::Migration
  def change
    create_table :organizations_people do |t|
      t.integer :organization_id
      t.integer :person_id
    end

    add_index :organizations_people, [:organization_id, :person_id], unique: true
  end
end
