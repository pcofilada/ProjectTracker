require 'rails_helper'

RSpec.describe "dashboard/projects/new", :type => :view do
  before(:each) do
    assign(:dashboard_project, Dashboard::Project.new())
  end

  it "renders new dashboard_project form" do
    render

    assert_select "form[action=?][method=?]", dashboard_projects_path, "post" do
    end
  end
end
