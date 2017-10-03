module Manager
  class TracksController < Manager::ManagerController
    def index
      @tracks = Track.all
    end

    def show
      @track = Track.friendly.find(params[:id])
    end
  end
end
