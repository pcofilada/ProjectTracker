require 'rails_helper'

RSpec.describe "dashboard/projects/index", :type => :view do
  before(:each) do
    assign(:dashboard_projects, [
      Dashboard::Project.create!(),
      Dashboard::Project.create!()
    ])
  end

  it "renders a list of dashboard/projects" do
    render
  end
end
