class FuncionsController < ApplicationController
  def create
    @pelicula = Pelicula.find(params[:pelicula_id])
    @funcion = @pelicula.funcions.new(funcion_params)
    @funcion.cupos = 10
    if @funcion.save
      flash[:success] = "Función guardada correctamente"
    else
      flash[:error] = @funcion.errors.full_messages.join("\n")
    end
    redirect_to pelicula_path(@pelicula)
  end

  def destroy
    @pelicula = Pelicula.find(params[:pelicula_id])
    @funcion = @pelicula.funcions.find(params[:id])
    @funcion.destroy
    redirect_to pelicula_path(@article)
  end

  private
  def funcion_params
    params.require(:funcion).permit(:dia, :cupos)
  end
end
