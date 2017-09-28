require 'rails_helper'

RSpec.describe FormulasController, type: :controller do
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
