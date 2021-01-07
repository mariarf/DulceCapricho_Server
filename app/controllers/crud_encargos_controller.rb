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
        @insertar = params[:nombreInput]
        @nuevo
        case insertar
            when 0
                @nuevo = Bizcocho.new(params[:nombre])
                
            when 1
                @nuevo = Buttercream.new(params[:nombre])
                
            when 2
                @nuevo = Galletum.new(params[:nombre])
                
            when 3
                @nuevo = Popcake.new(params[:nombre])
                
            when 4
                @nuevo = Mesadulce.new(params[:nombre])
                
            else 
                
        end
        if @nuevo.save
        else
            render :new
        end
    end


    def editar

    end
end
