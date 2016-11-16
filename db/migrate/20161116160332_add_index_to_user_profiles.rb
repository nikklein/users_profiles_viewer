class AddIndexToUserProfiles < ActiveRecord::Migration[5.0]
  def change
    add_index :user_profiles, [:username, :address]
    add_index :user_profiles, [:username, :country]
    add_index :user_profiles, [:username, :state]
    add_index :user_profiles, [:username, :city]
    add_index :user_profiles, [:username, :postal_code]
    add_index :user_profiles, [:username, :city, :country]
  end
end
