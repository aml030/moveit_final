class GoalsController < ApplicationController
  def index
    @goals = current_user.goals
  end

  def show
    @goal = Goal.find(params[:id])
  end

  def new
    @goal = Goal.new
  end

  def create
    @goal = Goal.new
    @goal.user_id = current_user.id
    @goal.goal = params[:goal]

    if @goal.save
      redirect_to "/goals", :notice => "Goal created successfully."
    else
      render 'new'
    end
  end

  def edit
    @goal = Goal.find(params[:id])
  end

  def update
    @goal = Goal.find(params[:id])

    @goal.user_id = current_user.id
    @goal.goal = params[:goal]

    if @goal.save
      redirect_to "/goals", :notice => "Goal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @goal = Goal.find(params[:id])

    @goal.destroy

    redirect_to "/goals", :notice => "Goal deleted."
  end
end
