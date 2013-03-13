require 'spec_helper'

describe PvAccommodationsController do
  let(:website) { mock_model(Website).as_null_object }

  before { Website.stub(:first).and_return(website) }

  context 'when signed in as admin' do
    before { signed_in_as_admin }

    describe 'POST import_accommodations' do
      let(:importer) { mock(AccommodationImporter).as_null_object }

      it 'instantiates an accommodation importer' do
        PierreEtVacances::AccommodationImporter.should_receive(:new).and_return(importer)
        post 'import_accommodations'
      end

      it 'gets the data from FTP' do
        PierreEtVacances::AccommodationImporter.stub(:new).and_return(importer)
        importer.should_receive(:ftp_get)
        post 'import_accommodations'
      end

      it 'imports the data' do
        PierreEtVacances::AccommodationImporter.stub(:new).and_return(importer)
        importer.stub(:xml_filename).and_return('a.xml')
        importer.should_receive(:import).with(['pierreetvacances/a.xml'], true)
        post 'import_accommodations'
      end

      it 'redirects to index' do
        PierreEtVacances::AccommodationImporter.stub(:new).and_return(importer)
        post 'import_accommodations'
        response.should redirect_to(action: 'index')
      end

      it 'sets a flash notice' do
        PierreEtVacances::AccommodationImporter.stub(:new).and_return(importer)
        post 'import_accommodations'
        flash[:notice].should == 'Pierre et Vacances accommodations have been imported.'
      end
    end
  end
end
