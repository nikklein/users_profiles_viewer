require 'rails_helper'

feature 'user profiles' do
  context 'initially no profiles are shown' do
    scenario 'should display a prompt to show profiles' do
      visit '/users_profiles'
      expect(page).to have_content 'No profiles yet'
      expect(page).to have_link 'Show all profiles'
    end
  end
end
