require 'rails_helper'

RSpec.describe "dashboard/projects/edit", :type => :view do
  before(:each) do
    @dashboard_project = assign(:dashboard_project, Dashboard::Project.create!())
  end

  it "renders the edit dashboard_project form" do
    render

    assert_select "form[action=?][method=?]", dashboard_project_path(@dashboard_project), "post" do
    end
  end
end
