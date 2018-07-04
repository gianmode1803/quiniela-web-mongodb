require "rails_helper"

RSpec.describe MediaVideosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/media_videos").to route_to("media_videos#index")
    end

    it "routes to #new" do
      expect(:get => "/media_videos/new").to route_to("media_videos#new")
    end

    it "routes to #show" do
      expect(:get => "/media_videos/1").to route_to("media_videos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/media_videos/1/edit").to route_to("media_videos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/media_videos").to route_to("media_videos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/media_videos/1").to route_to("media_videos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/media_videos/1").to route_to("media_videos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/media_videos/1").to route_to("media_videos#destroy", :id => "1")
    end

  end
end
