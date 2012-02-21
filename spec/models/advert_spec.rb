require 'spec_helper'

describe Advert do
  describe "#new_for" do
    it "returns an Advert" do
      Advert.new_for(Property.new({:user_id => 1})).is_a?(Advert).should be_true
    end
  end

  describe "#to_s" do
    context "when it has an object" do
      let(:property) { mock_model(Property).as_null_object }
      let(:resort) { mock_model(Resort).as_null_object }

      it "returns a string containing the object's name, resort and type description" do
        a = valid_advert
        a.stub(:object).and_return(property)
        property.stub(:name).and_return('My Chalet')
        property.stub(:resort).and_return(resort)
        resort.stub(:name).and_return('Chamonix')
        property.stub(:basket_advert_type_description).and_return('Property')
        a.to_s.should == "My Chalet (Chamonix Property)"
      end
    end

    context "when it has no object" do
      it "returns to_s from its superclass" do
        a = valid_advert
        a.to_s[0..8].should == '#<Advert:'
      end
    end
  end

  describe "#price" do
    context "when it has an object" do
      let(:property) { mock_model(Property).as_null_object }

      it "returns the object's price" do
        price_of_property = 99
        a = valid_advert
        a.stub(:object).and_return(property)
        property.should_receive(:price).with(a, 1).and_return(price_of_property)
        a.price(1).should equal(price_of_property)
      end
    end

    context "when it has no object" do
      it "returns 0" do
        a = valid_advert
        a.price(1).should equal(0)
      end
    end
  end

  describe "#record_view" do
    it "increases the number of views by one" do
      a = valid_advert
      a.record_view
      a.views.should equal(1)
    end

    it "saves itself" do
      a = valid_advert
      a.should_receive(:save)
      a.record_view
    end
  end

  def valid_advert
    Advert.new(:user_id => 1)
  end
end
