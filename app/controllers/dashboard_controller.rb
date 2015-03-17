class DashboardController < ApplicationController
	before_action :authenticate_user!
	layout 'application'
end
