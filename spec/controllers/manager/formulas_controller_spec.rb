require 'rails_helper'

RSpec.describe Manager::FormulasController, type: :controller do
  context 'signed in staff' do
    before(:each) do
      @user = FactoryGirl.create(:user)
      sign_in @user
    end

    describe 'GET #index' do
      it 'returns http success' do
        get :index
        expect(response).to have_http_status(:success)
      end
    end

    describe 'GET #show' do
      it 'returns http success' do
        formula = FactoryGirl.create(:formula)
        get :show, params: { id: formula.slug }
        expect(response).to have_http_status(:success)
      end
    end
  end

  context 'unsigned in staff' do
    describe 'GET #index' do
      it 'returns http success' do
        get :index
        expect(response).to have_http_status(:found)
      end
    end

    describe 'GET #show' do
      it 'returns http success' do
        formula = FactoryGirl.create(:formula)
        get :show, params: { id: formula.slug }
        expect(response).to have_http_status(:found)
      end
    end
  end
end
