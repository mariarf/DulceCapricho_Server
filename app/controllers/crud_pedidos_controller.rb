class CrudPedidosController < ApplicationController
 
  before_action :require_login
  def require_login
    current_user = User.find_by(:id => session[:current_user_id])
    if !current_user 
      flash[:error] = "Debe iniciar sesión para acceder a este contenido"
      redirect_to '/login/admin'
    end
  end

  @root_url = "/pedidos/index"
  
  # layout 'application'
  
  add_flash_types :notice

  # Listar todos los registros de la Base de Datos 
  def index
    @pedidos = Pedido.all()
  end
  
  # Leer los detalles de un registro 
  def leer
    @pedidos = params[:id]
    @pedidos = Pedido.where(id: @pedidos)
  end
  
  # Llamamos a la vista con el formulario para crear un registro 
  def crear
    @pedidos = Pedido.new
  end
  
  # Procesamos la creación de un registro en la base de datos
  def insertar
  
    # Subimos el Archivo al servidor
    
    @pedidos = Pedido.new(parametros)
    if @pedidos.save
  	else
  		render :new
    end

    # Redireccionamos a la vista principal con mensaje   
    if params[:datos].eql? "server"
      @ini = "/pedidos/index"
      flash[:notice] = "Creado Correctamente !"
      redirect_to @ini 
    else
      flash[:notice] = "Pedido realizado correctamente"
      redirect_to "/contacto"
    end
  
  end
  
  # Llamamos a la vista con el formulario para actualizar un registro 
  
  def actualizar
    # Pasamos el 'id' del registro a actualizar (método index)   
    @pedidos = Pedido.find(params[:id])
    @pedidos = Pedido.where(id: @pedidos)
  
  end
  
  # Procesamos la actualización de un registro en la base de datos 
  def editar
  
    # Pasamos el 'id' del registro a actualizar (método editar)    
    @pedidos = Pedido.find(params[:id])    
    
    # Actualizamos un determinado registro en la base de datos
    if @pedidos.update(parametros)   
  
    else
      render :edit
    end
  
      # Redireccionamos a la vista principal con mensaje 
      @ini = "/pedidos/index"
      flash[:notice] = "Actualizado Correctamente !"
      redirect_to @ini 
  
  end
  
  # Procesamos la eliminación de un registro de la base de datos
  def eliminar
    
    # Eliminamos un determinado registro en la base de datos, pasamos el 'id' del registro a eliminar
    @pedidos = Pedido.find(params[:id])
  
    Pedido.where(id: @pedidos ).destroy_all    
    
    # Redireccionamos a la vista principal con mensaje 
    @ini = "/pedidos/index"
    flash[:notice] = "Eliminado Correctamente !"
    redirect_to @ini 
  
  end
  
  # Parámetros o campos que insertamos o actualizamos en la base de datos 
  private
  def parametros
    params.permit(:nombre, :apellido, :email, :domicilio, :CP, :fechaEntrega, :comentario, :tuPedido)
  end
  
  end