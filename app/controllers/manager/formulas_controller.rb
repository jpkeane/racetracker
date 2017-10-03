module Manager
  class FormulasController < Manager::ManagerController
    def index
      @formulas = Formula.all
    end

    def show
      @formula = Formula.friendly.find(params[:id])
    end
  end
end
