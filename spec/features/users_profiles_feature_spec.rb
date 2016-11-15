require 'rails_helper'

feature 'user profiles' do
  context 'initially no profiles are shown' do
    scenario 'should display a prompt to show profiles' do
      visit '/users_profiles'
      expect(page).to have_content 'No profiles yet'
      expect(page).to have_link 'Show all profiles'
    end
  end

  context 'displayed on the main page' do
    before do
      username = 'test_user'
      latitude = '51.500152'.to_f
      longitude = '-0.126236'.to_f

      UserProfile.create(username: username, latitude: latitude, longitude: longitude)
    end
    scenario 'display user profile' do
      visit '/users_profiles'
      click_link('Show all profiles')
      expect(page).to have_content(username)
      expect(page).to have_content(geolocation)
      expect(page).not_to have_content('Show all profiles')
    end
  end
end
