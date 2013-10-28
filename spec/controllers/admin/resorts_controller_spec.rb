require 'spec_helper'

describe Admin::ResortsController do
  let(:website) { mock_model(Website).as_null_object }
  let(:resort) { mock_model(Resort).as_null_object }

  before do
    Website.stub(:first).and_return(website)
    controller.stub(:admin?).and_return(true)
  end

  describe "GET index" do
    let(:countries) { mock(Array) }

    before do
      Country.stub(:with_resorts).and_return(countries)
    end

    it "finds all countries with resorts" do
      Country.should_receive(:with_resorts)
      get :index
    end

    it "assigns @countries" do
      get :index
      expect(assigns[:countries]).to equal(countries)
    end
  end

  describe 'POST create' do
    let(:resort) { mock_model(Resort).as_null_object }
    let(:params) { { resort: { 'name' => 'Morzine' } } }

    before do
      Resort.stub(:new).and_return(resort)
    end

    it 'instantiates a new resort with the given params' do
      Resort.should_receive(:new).with(params[:resort])
      post 'create', params
    end

    context 'when the resort saves successfully' do
      before do
        resort.stub(:save).and_return(true)
      end

      it 'sets a flash[:notice] message' do
        post 'create', params
        expect(flash[:notice]).to eq("Created.")
      end

      it 'redirects to the resorts page' do
        post 'create', params
        expect(response).to redirect_to(admin_resorts_path)
      end
    end

    context 'when the resort fails to save' do
      before do
        resort.stub(:save).and_return(false)
      end

      it 'assigns @resort' do
        post 'create', params
        expect(assigns(:resort)).to eq(resort)
      end

      it 'renders the new template' do
        post 'create', params
        expect(response).to render_template('new')
      end
    end
  end

  describe 'GET edit' do
    let(:interhome_place_resort) { InterhomePlaceResort.new }
    let(:pv_place_resort) { PvPlaceResort.new }

    it 'finds a resort' do
      Resort.should_receive(:find_by).with(slug: 'chamonix')
      get 'edit', id: 'chamonix'
    end

    context 'when resort is found' do
      before do
        Resort.stub(:find_by).and_return(resort)
      end

      it 'creates a new Interhome place resort and sets its resort_id' do
        InterhomePlaceResort.should_receive(:new).with(resort_id: resort.id)
        get 'edit', id: '1'
      end

      it 'assigns(@interhome_place_resort)' do
        InterhomePlaceResort.stub(:new).and_return(interhome_place_resort)
        get 'edit', id: '1'
        expect(assigns(:interhome_place_resort)).to eq interhome_place_resort
      end

      it 'creates a new P&V place resort and sets its resort_id' do
        PvPlaceResort.should_receive(:new).with(resort_id: resort.id)
        get 'edit', id: '1'
      end

      it 'assigns(@pv_place_resort)' do
        PvPlaceResort.stub(:new).and_return(pv_place_resort)
        get 'edit', id: '1'
        expect(assigns(:pv_place_resort)).to eq pv_place_resort
      end
    end
  end

  describe "DELETE destroy" do
    context 'when resort found' do
      before do
        Resort.stub(:find_by).and_return(resort)
      end

      context 'when resort has no properties or directory adverts' do
        before do
          resort.stub_chain([:properties, :any?]).and_return(false)
          resort.stub_chain([:directory_adverts, :any?]).and_return(false)
        end

        it 'destroys the resort' do
          resort.should_receive(:destroy)
          delete :destroy, id: 'chamonix'
        end

        it 'redirects to the resorts index' do
          delete :destroy, id: 'chamonix'
          expect(response).to redirect_to(admin_resorts_path)
        end

        it 'sets a flash notice' do
          delete :destroy, id: 'chamonix'
          expect(flash[:notice]).to eq I18n.t('notices.deleted')
        end
      end

      context 'when resort has properties' do
        before do
          resort.stub_chain([:properties, :any?]).and_return(true)
          resort.stub_chain([:directory_adverts, :any?]).and_return(false)
        end

        it 'renders' do
          delete :destroy, id: 'chamonix'
          expect(response).to render_template('destroy')
        end
      end

      context 'when resort has directory adverts' do
        before do
          resort.stub_chain([:directory_adverts, :any?]).and_return(true)
          resort.stub_chain([:properties, :any?]).and_return(false)
        end

        it 'renders' do
          delete :destroy, id: 'chamonix'
          expect(response).to render_template('destroy')
        end
      end
    end
  end

  describe 'POST destroy_properties' do
    it 'finds the resort' do
      Resort.should_receive(:find_by).with(slug: 'chamonix').and_return(resort)
      post 'destroy_properties', id: 'chamonix'
    end

    context 'when the resort is found' do
      before { Resort.stub(:find_by).and_return(resort) }

      it 'destroys each property' do
        properties = mock(ActiveRecord::Relation)
        resort.stub(:properties).and_return(properties)
        properties.should_receive(:destroy_all)
        post 'destroy_properties', id: 'chamonix'
      end

      it 'redirects to the resorts index' do
        post 'destroy_properties', id: 'chamonix'
        expect(response).to redirect_to(admin_resorts_path)
      end

      it 'sets a flash notice' do
        post 'destroy_properties', id: 'chamonix'
        expect(flash[:notice]).to eq('Properties deleted.')
      end
    end
  end

  describe 'POST destroy_directory_adverts' do
    it 'finds the resort' do
      Resort.should_receive(:find_by).with(slug: 'chamonix').and_return(resort)
      post :destroy_directory_adverts, id: 'chamonix'
    end

    context 'when the resort is found' do
      before { Resort.stub(:find_by).and_return(resort) }

      it 'destroys each directory advert' do
        directory_adverts = mock(ActiveRecord::Relation)
        resort.stub(:directory_adverts).and_return(directory_adverts)
        directory_adverts.should_receive(:destroy_all)
        post :destroy_directory_adverts, id: 'chamonix'
      end

      it 'redirects to the resorts index' do
        post :destroy_directory_adverts, id: 'chamonix'
        expect(response).to redirect_to(admin_resorts_path)
      end

      it 'sets a flash notice' do
        post :destroy_directory_adverts, id: 'chamonix'
        expect(flash[:notice]).to eq('Directory adverts deleted.')
      end
    end
  end
end