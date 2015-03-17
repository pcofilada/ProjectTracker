require 'rails_helper'

RSpec.describe "dashboard/projects/show", :type => :view do
  before(:each) do
    @dashboard_project = assign(:dashboard_project, Dashboard::Project.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
