require "rails_helper"

RSpec.describe CoachTeamsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/coach_teams").to route_to("coach_teams#index")
    end

    it "routes to #new" do
      expect(:get => "/coach_teams/new").to route_to("coach_teams#new")
    end

    it "routes to #show" do
      expect(:get => "/coach_teams/1").to route_to("coach_teams#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/coach_teams/1/edit").to route_to("coach_teams#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/coach_teams").to route_to("coach_teams#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/coach_teams/1").to route_to("coach_teams#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/coach_teams/1").to route_to("coach_teams#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/coach_teams/1").to route_to("coach_teams#destroy", :id => "1")
    end

  end
end
