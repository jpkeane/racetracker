class FormulasController < ApplicationController
  def index
    @formulas = Formula.all
  end

  def show
    @formula = Formula.friendly.find(params[:id])
  end
end
