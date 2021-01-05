class VistasClientesController < ApplicationController
  def index
  end

  def encargos
    @eventos = Evento.all()
  end

  def eventos
    @eventos = Evento.all()
  end

  def politica_y_condiciones
  end

  def contacto
  end
end
