Rails.application.routes.draw do
  #Vistas cliente
  get 'index' => 'vistas_clientes#index'
  get 'encargos' => 'vistas_clientes#encargos'
  get 'eventos' => 'vistas_clientes#eventos'
  get 'politica_y_condiciones' => 'vistas_clientes#politica y condiciones'
  get 'contacto' => 'vistas_clientes#contacto'
  
  #Vistas servidor
  get 'eventos/index' => 'eventos#index' # Ruta de la vista principal de los registros 
  get 'eventos/leer/:id', to: 'eventos#leer' # Ruta de la vista leer o ver los detalles de un registro 
  get 'eventos/crear' => 'eventos#crear' # Ruta de la vista para crear un registro 
  post 'eventos/insertar' => 'eventos#insertar' # Ruta que procesa la creación de un registro en la base de datos 
  get 'eventos/actualizar/:id', to: 'eventos#actualizar' # Ruta de la vista para actualizar un registro 
  post 'eventos/editar/:id', to: 'eventos#editar' # Ruta que procesa la actualización de un registro en la base de datos 
  post 'eventos/eliminar/:id', to: 'eventos#eliminar' # Ruta para eliminar un registro de la base de datos 

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
