class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(id=params[:id])
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      flash[:alert] = "Kitten successfully created"
      redirect_to(@kitten)
    else
      flash.now[:error] = "Please fill out the form"
      render :new, status: :unprocessable_entity
    end
  end

  private
  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
