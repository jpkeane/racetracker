module Manager
  class FixturesController < Manager::ManagerController
    def index
      @fixtures = Fixture.all
    end

    def show
      @fixture = Fixture.friendly.find(params[:id])
    end
  end
end
