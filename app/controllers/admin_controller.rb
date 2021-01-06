class AdminController < ApplicationController
    
    def admin
        @user = params[:userName]
        @password = params[:password]

        if @user.eql? "admin"
        if @password.eql? "!daw-g4"
            redirect_to "/index/admin"
        else
            flash[:error] = "Contraseña incorrecta"
            redirect_to "/login/admin"
        end
    
        else
        flash[:error] = "Usuario incorrecto"
        redirect_to "/login/admin"
        end

    end
end