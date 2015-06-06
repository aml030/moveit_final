class EntriesController < ApplicationController
  def index
    @entries = current_user.entries.order("did_on DESC")

  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.user_id = current_user.id
    @entry.minutes = params[:minutes]
    @entry.did_on = Chronic.parse(params[:did_on])
    @entry.exercise_id = params[:exercise_id]
    @entry.notes = params[:notes]

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

    @entry.user_id = current_user.id
    @entry.minutes = params[:minutes]
    @entry.did_on = Chronic.parse(params[:did_on])
    @entry.exercise_id = params[:exercise_id]
    @entry.notes = params[:notes]

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
