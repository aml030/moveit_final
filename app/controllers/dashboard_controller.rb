class DashboardController < ApplicationController
  def index
    @entries = current_user.entries.limit(10)
    @goals = Goal.all
  end
end
