json.array!(@dashboard_projects) do |dashboard_project|
  json.extract! dashboard_project, :id
  json.url dashboard_project_url(dashboard_project, format: :json)
end
