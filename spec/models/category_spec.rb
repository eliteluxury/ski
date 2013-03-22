require 'spec_helper'

describe Category do
  it "has an SEO-friendly to_param using i18n" do
    category = Category.new
    category.name = "category_names.internet_cafe"
    category.id = 1
    category.to_param.should == "1-internet-cafes"
  end

  it 'prevents deletion with associated directory adverts' do
    category = FactoryGirl.create(:category)
    da = FactoryGirl.create(:directory_advert, category_id: category.id)
    da.save!
    lambda { category.destroy }.should raise_error(ActiveRecord::DeleteRestrictionError)
  end
end
