require 'spec_helper'

describe PropertiesHelper do
  describe '#featured_properties' do
    it 'returns an empty string when properties is nil' do
      expect(featured_properties(nil)).to eq ''
    end

    it 'renders no more than 3 properties' do
      properties = []
      4.times { properties << FactoryGirl.create(:property) }
      html = featured_properties(properties)
      expect(html).to have_selector("[title='#{properties[2].name}']")
      expect(html).not_to have_selector("[title='#{properties[3].name}']")
    end
  end
end