require "rails_helper"

RSpec.describe Dashboard::ProjectsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/dashboard/projects").to route_to("dashboard/projects#index")
    end

    it "routes to #new" do
      expect(:get => "/dashboard/projects/new").to route_to("dashboard/projects#new")
    end

    it "routes to #show" do
      expect(:get => "/dashboard/projects/1").to route_to("dashboard/projects#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dashboard/projects/1/edit").to route_to("dashboard/projects#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/dashboard/projects").to route_to("dashboard/projects#create")
    end

    it "routes to #update" do
      expect(:put => "/dashboard/projects/1").to route_to("dashboard/projects#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dashboard/projects/1").to route_to("dashboard/projects#destroy", :id => "1")
    end

  end
end
