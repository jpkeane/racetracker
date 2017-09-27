class FixturesController < ApplicationController
  def index
    @fixtures = Fixture.all
  end

  def show
    @fixture = Fixture.friendly.find(params[:id])
  end
end
