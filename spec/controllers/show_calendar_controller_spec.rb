require 'rails_helper'

RSpec.describe ShowCalendarController, type: :controller do

  describe "GET #fase_grupos" do
    it "returns http success" do
      get :fase_grupos
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #octavos" do
    it "returns http success" do
      get :octavos
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #cuartos" do
    it "returns http success" do
      get :cuartos
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #semifinal" do
    it "returns http success" do
      get :semifinal
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #tercer_puesto" do
    it "returns http success" do
      get :tercer_puesto
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #final" do
    it "returns http success" do
      get :final
      expect(response).to have_http_status(:success)
    end
  end

end
