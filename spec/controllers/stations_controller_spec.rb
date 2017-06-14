require 'rails_helper'

RSpec.describe StationsController, type: :controller do
  let(:station1) { FactoryGirl.create(:station) }
  let(:station2) { FactoryGirl.create(:station) }

  describe 'GET #index' do
    before(:each) do
      station1
      station2
    end

    it 'returns all stations' do
      get :index

      expect(assigns(:stations).to_a).to eq([station1, station2])
    end

    it 'renders index template' do
      get :index

      expect(response).to render_template(:index)
    end
  end

  describe 'GET #show' do
    let(:train) { FactoryGirl.create(:train) }
    let(:beverage_store) { FactoryGirl.create(:beverage_store, station: station1) }
    let(:timetable) { FactoryGirl.create(:timetable, station: station1, train: train) }

    context 'station with such id is present in DB' do
      before(:each) do
        station1.beverage_stores << beverage_store
        timetable
      end

      it 'assigns @station' do
        get :show, params: { id: station1.id }

        expect(assigns(:station)).to eql(station1)
      end

      it 'assigns @trains' do
        get :show, params: { id: station1.id }

        expect(assigns(:trains).to_a).to eql([train])
      end

      it 'assigns @station' do
        get :show, params: { id: station1.id }

        expect(assigns(:beverage_stores).to_a).to eql([beverage_store])
      end

      it 'renders show template' do
        get :show, params: { id: station1.id }

        expect(response).to render_template(:show)
      end
    end

    context 'station with such id is not present in DB' do
      it 'redirects to the 404 page' do
        get :show, params: { id: 0 }

        expect(response).to render_template('errors/error_404')
      end
    end
  end
end