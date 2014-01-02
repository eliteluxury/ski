require 'spec_helper'

describe 'properties/show' do
  it 'shows a table of features' do
    assign(:property, FactoryGirl.create(:property).decorate)
    render
    expect(rendered).to have_selector('#features')
  end

  context 'when a hotel' do
    it 'does not show a table of features' do
      assign(:property, FactoryGirl.create(:property, listing_type: Property::LISTING_TYPE_HOTEL).decorate)
      render
      expect(rendered).not_to have_selector('#features')
    end
  end

  context 'when for rent' do
    before do
      assign(:property, FactoryGirl.create(:property, listing_type: Property::LISTING_TYPE_FOR_RENT, sleeping_capacity: 3).decorate)
    end

    it 'shows sleeping capacity' do
      render
      expect(rendered).to have_content 'Sleeping capacity: 3'
    end
  end

  context 'when for sale' do
    before do
      assign(:property, FactoryGirl.create(:property, listing_type: Property::LISTING_TYPE_FOR_SALE, sleeping_capacity: 3).decorate)
    end

    it 'does not show sleeping capacity' do
      render
      expect(rendered).not_to have_content 'Sleeping capacity'
    end
  end
end
