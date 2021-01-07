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
  
end
