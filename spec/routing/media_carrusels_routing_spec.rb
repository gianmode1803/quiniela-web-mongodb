require "rails_helper"

RSpec.describe MediaCarruselsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/media_carrusels").to route_to("media_carrusels#index")
    end

    it "routes to #new" do
      expect(:get => "/media_carrusels/new").to route_to("media_carrusels#new")
    end

    it "routes to #show" do
      expect(:get => "/media_carrusels/1").to route_to("media_carrusels#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/media_carrusels/1/edit").to route_to("media_carrusels#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/media_carrusels").to route_to("media_carrusels#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/media_carrusels/1").to route_to("media_carrusels#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/media_carrusels/1").to route_to("media_carrusels#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/media_carrusels/1").to route_to("media_carrusels#destroy", :id => "1")
    end

  end
end
