class DosesController < ApplicationController

  def new
    @ingredients = Ingredient.all
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.valid?
      @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.delete
    redirect_back(fallback_location: root_path)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
