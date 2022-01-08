require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  describe 'GET /foods' do
    it 'works! (now write some real specs)' do
      get foods_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /foods/new' do
    it 'works! (now write some real specs)' do
      get new_food_path
      expect(response).to have_http_status(200)
    end
  end
end
