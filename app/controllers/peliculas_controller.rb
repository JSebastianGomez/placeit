class PeliculasController < ApplicationController
  def index
    @peliculas = Pelicula.all
  end

  def show
    @pelicula = Pelicula.find(params[:id])
  end

  def new
    @pelicula = Pelicula.new
  end

  def create
    @pelicula = Pelicula.new(pelicula_params)
    if @pelicula.save
      redirect_to @pelicula
    else
      render :new
    end
  end

  def edit
    @pelicula = Pelicula.find(params[:id])
  end

  def update
    @pelicula = Pelicula.find(params[:id])

    if @pelicula.update(pelicula_params)
      redirect_to @pelicula
    else
      render :edit
    end
  end

  def destroy
    @pelicula= Pelicula.find(params[:id])
    @pelicula.destroy

    redirect_to rooth_path
  end

  private

  def pelicula_params
    params.require(:pelicula).permit(:nombre, :sinopsis, :urlimagen)
  end
end
