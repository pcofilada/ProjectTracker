require 'rails_helper'

RSpec.describe "Dashboard::Projects", :type => :request do
  describe "GET /dashboard_projects" do
    it "works! (now write some real specs)" do
      get dashboard_projects_path
      expect(response).to have_http_status(200)
    end
  end
end
