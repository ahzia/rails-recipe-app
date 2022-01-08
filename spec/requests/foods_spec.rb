require 'rails_helper'

RSpec.describe 'Foods', type: :request do
  describe 'GET /foods' do
    it 'does not allow unauthenticated users to see foods' do
      get foods_path
      expect(response).to redirect_to new_user_session_path
    end
  end
end