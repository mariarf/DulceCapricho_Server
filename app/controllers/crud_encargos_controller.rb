class CrudEncargosController < ApplicationController
    def index
        @bizcochos = "bizcocho.all()"
        @buttercreams = "buttercream.all()"
        @galletas = "galleta.all()"
        @popcakes = "popcake.all()"
        @mesadulces = "mesadulce.all()"
        @listas = [@bizcochos, @buttercreams, @galletas, @popcakes, @mesadulces]
    end
end
