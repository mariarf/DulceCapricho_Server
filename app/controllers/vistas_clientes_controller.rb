class VistasClientesController < ApplicationController

 
  def index
  end

  def encargos
    @eventos = Evento.all()
    
    @bizcochos = Bizcocho.all()
    @buttercreams = Buttercream.all()
    @galletas = Galletum.all()
    @popcakes = Popcake.all()
    @mesadulces = Mesadulce.all()
  end

  def eventos
    @eventos = Evento.all()
  end

  def politica_y_condiciones
  end

  def contacto
  end

  # Procesamos la creación de un registro en la base de datos
  def insertar

    # Subimos el Archivo al servidor
    
    @pedidos = Pedido.new(parametros)
    @pedidos.save

    # Redireccionamos a la vista principal con mensaje  
    flash[:notice] = "Pedido realizado correctamente"
    redirect_to "/contacto"
  end

  # Parámetros o campos que insertamos o actualizamos en la base de datos 
  private
  def parametros
    params.permit(:nombre, :apellido, :email, :domicilio, :CP, :fechaEntrega, :comentario, :tuPedido)
  end
  
end
