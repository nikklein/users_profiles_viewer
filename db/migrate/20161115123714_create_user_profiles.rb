class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.string :username
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :country
      t.string :state
      t.string :city
      t.string :postal_code
      t.timestamps
    end
    add_index :user_profiles, [:latitude, :longitude]
  end
end
