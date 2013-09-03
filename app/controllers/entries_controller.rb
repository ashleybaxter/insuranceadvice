class EntriesController < ApplicationController
  
  def index
    if params[:tag]
      @entries = Entry.tagged_with(params[:tag])
    else
      @entries = Entry.search(params[:search])
    end
  end
  
  def new
    @entry = Entry.new
  end
  
  def create
    @entry = Entry.new(params[:entry])
    if @entry.save
      redirect_to @entry
    end
  end
  
  def show
    @entry = Entry.find(params[:id])
  end
  
  def edit
    @entry = Entry.find(params[:id])
  end
  
  def update
    @entry = Entry.find(params[:id])
    if @entry.update_attributes(params[:entry])
      redirect_to(@entry)
    else
      render('edit')
    end
  end
  
  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_path
  end
end
