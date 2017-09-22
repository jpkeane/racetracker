class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = Track.friendly.find(params[:id])
  end
end
