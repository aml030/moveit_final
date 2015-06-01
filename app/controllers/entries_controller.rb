class EntriesController < ApplicationController
  def index
    @entries = Entry.all

  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.user_id = params[:user_id]
    @entry.minutes = params[:minutes]
    @entry.did_on = params[:did_on]
    @entry.exercise_id = params[:exercise_id]

    if @entry.save
      redirect_to "/entries", :notice => "Entry created successfully."
    else
      render 'new'
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])

    @entry.user_id = params[:user_id]
    @entry.minutes = params[:minutes]
    @entry.did_on = params[:did_on]
    @entry.exercise_id = params[:exercise_id]

    if @entry.save
      redirect_to "/entries", :notice => "Entry updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @entry = Entry.find(params[:id])

    @entry.destroy

    redirect_to "/entries", :notice => "Entry deleted."
  end
end
