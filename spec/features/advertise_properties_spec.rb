require 'spec_helper'

feature 'Advertise Properties' do
  fixtures :countries, :currencies, :resorts, :roles, :users, :websites

  scenario 'Advertise a new development' do
    sign_in_as_a_property_developer
    click_link 'Advertise a Property for Sale'
    fill_in 'Property name', with: 'Le Centaure'
    check 'New development'
    select 'France > Chamonix', from: 'Resort'
    select 'Apartment', from: 'Accommodation type'
    fill_in 'Address', with: 'La Frasse'
    click_button 'Save'
    attach_file 'Image', 'test-files/banner-image.png'
    click_button 'Upload Image'
    page.should have_content 'Image uploaded.'
  end
end
