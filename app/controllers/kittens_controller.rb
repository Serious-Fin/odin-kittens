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

  def edit
    @kitten = Kitten.find(id=params[:id])
  end

  def update
    @kitten = Kitten.find(id=params[:id])

    if @kitten.update(kitten_params)
      flash[:alert] = "Kitten updated successfully"
      redirect_to(@kitten)
    else
      flash.now[:error] = "Please correctly fill out the form"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @kitten = Kitten.find(id=params[:id])
    flash[:alert] = "Kitten #{@kitten.name} deleted successfully"
    @kitten.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
