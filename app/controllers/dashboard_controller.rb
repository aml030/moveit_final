class DashboardController < ApplicationController
  def index
    @entries = current_user.entries.limit(10).order("did_on DESC")
    @goals = current_user.goals
  end
end
