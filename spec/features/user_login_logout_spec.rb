require 'rails_helper'

RSpec.feature 'User Sign in and Sign out', type: :feature do
  let(:user) { FactoryGirl.create(:user, password: 'testpassword', password_confirmation: 'testpassword') }

  scenario 'User logs in successfully with email address' do
    successful_sign_in
    expect(page).to have_content('Signed in successfully')
  end

  scenario 'User signs in unsuccessfully' do
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'notthepassword'
    click_button 'Sign in'
    expect(page).to have_content('Invalid Email or password.')
  end

  scenario 'User logs out successfully' do
    successful_sign_in
    successful_log_out
  end

  def successful_sign_in
    visit root_path
    click_link 'Sign in'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign in'
  end

  def successful_log_out
    click_link 'Sign out'
    expect(page).to have_link('Sign in')
    expect(page).to have_content('Signed out successfully. ')
  end
end
