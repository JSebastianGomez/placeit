class ReservasController < ApplicationController
  def index
    @reservas = Reserva.all
  end

  def show
    @reserva = Reserva.find(params[:id])
  end

  def new
    @reserva = Reserva.new
  end

  def create
    @reserva = Reserva.new(reserva_params)
    funcion = @reserva.funcion
    if @reserva.save
      funcion.cupos = funcion.cupos - 1
      funcion.save
      redirect_to @reserva
    else
      puts @reserva.errors.first.full_message
      render :new
    end
  end

  def edit
    @reserva = Reserva.find(params[:id])
  end

  def update
    @reserva = Reserva.find(params[:id])

    if @reserva.update(reserva_params)
      redirect_to @reserva
    else
      render :edit
    end
  end

  def destroy
    @reserva = Reserva.find(params[:id])
    @reserva.destroy

    redirect_to reservas_path
  end

  private

  def reserva_params
    params.require(:reserva).permit(:persona, :correo, :cedula, :celular, :funcion_id)
  end
end
