class CrudEncargosController < ApplicationController
    def index
        @bizcochos = Bizcocho.all()
        @buttercreams = Buttercream.all()
        @galletas = Galletum.all()
        @popcakes = Popcake.all()
        @mesadulces = Mesadulce.all()
        @listas = [@bizcochos, @buttercreams, @galletas, @popcakes, @mesadulces]
    end

    def insertar
        
    end


    def editar

    end
end
