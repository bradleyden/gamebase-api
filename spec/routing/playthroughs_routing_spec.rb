require "rails_helper"

RSpec.describe PlaythroughsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/playthroughs").to route_to("playthroughs#index")
    end

    it "routes to #new" do
      expect(:get => "/playthroughs/new").to route_to("playthroughs#new")
    end

    it "routes to #show" do
      expect(:get => "/playthroughs/1").to route_to("playthroughs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/playthroughs/1/edit").to route_to("playthroughs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/playthroughs").to route_to("playthroughs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/playthroughs/1").to route_to("playthroughs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/playthroughs/1").to route_to("playthroughs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/playthroughs/1").to route_to("playthroughs#destroy", :id => "1")
    end

  end
end
