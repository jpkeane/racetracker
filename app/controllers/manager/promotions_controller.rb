module Manager
  class PromotionsController < Manager::ManagerController
    def index
      @promotions = Promotion.all
    end

    def show
      @promotion = Promotion.friendly.find(params[:id])
    end
  end
end
