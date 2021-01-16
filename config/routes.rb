Rails.application.routes.draw do
  
  resources :users
  #Vistas cliente
  get '/' => 'vistas_clientes#index'
  get 'index' => 'vistas_clientes#index'
  get 'encargos' => 'vistas_clientes#encargos'
  get 'eventos' => 'vistas_clientes#eventos'
  get 'politica_y_condiciones' => 'vistas_clientes#politica_y_condiciones'
  get 'contacto' => 'vistas_clientes#contacto'
  post 'insertar' => 'vistas_clientes#insertar'
  
  #Administración
  get 'login/admin' => 'admin#login'
  get 'index/admin' => 'admin#index_admin'
  post 'login' => 'admin#admin'
  get 'logout' => 'admin#destroy'
  
  #Vistas servidor
  get 'eventos/index' => 'crud_eventos#index' # Ruta de la vista principal de los registros 
  get 'eventos/leer/:id', to: 'crud_eventos#leer' # Ruta de la vista leer o ver los detalles de un registro 
  get 'eventos/crear' => 'crud_eventos#crear' # Ruta de la vista para crear un registro 
  post 'eventos/insertar' => 'crud_eventos#insertar' # Ruta que procesa la creación de un registro en la base de datos 
  get 'eventos/actualizar/:id', to: 'crud_eventos#actualizar' # Ruta de la vista para actualizar un registro 
  post 'eventos/editar/:id', to: 'crud_eventos#editar' # Ruta que procesa la actualización de un registro en la base de datos 
  post 'eventos/eliminar/:id', to: 'crud_eventos#eliminar' # Ruta para eliminar un registro de la base de datos 

  get 'pedidos/index' => 'crud_pedidos#index'
  get 'pedidos/leer/:id' => 'crud_pedidos#leer'
  get 'pedidos/crear'=> 'crud_pedidos#crear'
  get 'pedidos/actualizar/:id' => 'crud_pedidos#actualizar'
  post 'pedidos/insertar' => 'crud_pedidos#insertar'
  post 'pedidos/editar/:id', to: 'crud_pedidos#editar' 
  post 'pedidos/eliminar/:id', to: 'crud_pedidos#eliminar' 

  get 'encargos/index' => 'crud_encargos#index'
  post 'encargos/insertar' => 'crud_encargos#insertar'
  post 'encargos/editar/:id' => 'crud_encargos#editar'
  post 'encargos/eliminar/:id' => 'crud_encargos#eliminar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
