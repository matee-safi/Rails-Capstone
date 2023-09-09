require 'rails_helper'

RSpec.describe 'food new view page', type: :system do
  let!(:user) do
    User.create(name: 'test user', email: 'user@example.com', password: 'password', password_confirmation: 'password')
  end

  def login_as(user)
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  describe 'show correct form for a user' do
    before(:example) do
      login_as(user)
      visit new_food_path
    end

    it 'displays a "Name" label in the form' do
      expect(page).to have_content('Name')
    end

    it 'displays a "Measurement" label in the form' do
      expect(page).to have_content('Measurement')
    end

    it 'displays a "Quantity" label in the form' do
      expect(page).to have_content('Quantity')
    end

    it 'displays a "Price" label in the form' do
      expect(page).to have_content('Price')
    end
  end
end
