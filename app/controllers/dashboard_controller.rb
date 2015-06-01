class DashboardController < ApplicationController
  def index
    @entries = Entry.all
    @goals = Goal.all
  end
end
