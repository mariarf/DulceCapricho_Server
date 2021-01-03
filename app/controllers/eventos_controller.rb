class EventosController < ApplicationController
  @root_url = "/eventos/index"

  #layout 'aplication'

  add_flash_types :notice

  #Listar todos los registros de la BD
  def index
    @eventos = Evento.all()
  end

  #Leer los detalles de un registro
  def leer
    @eventos = params[:id]
    @eventos = Evento.where(id: @eventos)
  end

  #Llamamos a la vista con el formulario para crear un registro
  def crear
    @eventos = Evento.new
  end

  #Procesamos la creación de un registro en la base de datos
  def insertar
    
    # Subimos el Archivo al servidor
    uploaded_file = params[:img]
    File.open(Rails.root.join('public', 'assets/img', uploaded_file.original_filename), 'wb') do |file|
        file.write(uploaded_file.read)
    end
  	
  	@eventos = Evento.new(parametros)
 
  	# Insertamos un registro en la base de datos
    if @eventos.save
      
      @eventos.update_column(:img, uploaded_file.original_filename)
  		
  	else
  		render :new
  	end
 
    # Redireccionamos a la vista principal con mensaje 
    @ini = "/eventos/index"
    flash[:notice] = "Creado Correctamente !"
    redirect_to @ini 
  end

  #Llamamos a la vista con el formulatio para actualizar un registro
  def actualizar
    #Pasamos el 'id' del registro a actualizar
    @eventos = Evento.find(params[:id])
    @eventos = Evento.where(id: @eventos)
  end

  # Procesamos la actualización de un registro en la base de datos 
  def editar
 
    # Pasamos el 'id' del registro a actualizar (método editar)    
    @eventos = Evento.find(params[:id])    
 
    # Actualizamos el Archivo al servidor
    uploaded_file = params[:img]
 
    if params[:img].present?
 
      # Eliminamos el archivo (imagen) anterior 
      simg = Evento.where(:id => @eventos).pluck(:img)    
      imgeliminar = Rails.root.join('public', 'assets/img', simg.join)
      File.delete(Rails.root + imgeliminar)
 
      # Subimos el nuevo archivo (imagen) 
      File.open(Rails.root.join('public', 'assets/img', uploaded_file.original_filename), 'wb') do |file|
          file.write(uploaded_file.read)
      end
 
    else
      #
    end  
    
    # Actualizamos un determinado registro en la base de datos
    if @eventos.update(parametros)
      
      # Actualizamos la columna 'img' de la base de datos
      if params[:img].present?
        @eventos.update_column(:img, uploaded_file.original_filename)
      else
        #
      end          
 
    else
      render :edit
    end
 
      # Redireccionamos a la vista principal con mensaje 
      @ini = "/eventos/index"
      flash[:notice] = "Actualizado Correctamente !"
      redirect_to @ini 
 
  end
 
  # Procesamos la eliminación de un registro de la base de datos
  def eliminar
    
    # Eliminamos un determinado registro en la base de datos, pasamos el 'id' del registro a eliminar
    @eventos = Evento.find(params[:id])
 
    # Eliminamos la imagen perteneciente al registro 
    simg = Evento.where(:id => @eventos).pluck(:img)    
    imgeliminar = Rails.root.join('public', 'assets/img', simg.join)
    File.delete(Rails.root + imgeliminar)
 
    Evento.where(id: @eventos ).destroy_all    
    
    # Redireccionamos a la vista principal con mensaje 
    @ini = "/eventos/index"
    flash[:notice] = "Eliminado Correctamente !"
    redirect_to @ini 
 
  end
 
  # Parámetros o campos que insertamos o actualizamos en la base de datos 
  private
  def parametros
  	params.permit(:nombre, :descripcion, :img)
  end
 
end

