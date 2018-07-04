require 'rails_helper'

RSpec.describe TablaController, type: :controller do

  describe "GET #preferencias" do
    it "returns http success" do
      get :preferencias
      expect(response).to have_http_status(:success)
    end
  end

end
