require 'test_helper'

class CrudPedidosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get crud_pedidos_index_url
    assert_response :success
  end

  test "should get leer" do
    get crud_pedidos_leer_url
    assert_response :success
  end

  test "should get crear" do
    get crud_pedidos_crear_url
    assert_response :success
  end

  test "should get actualizar" do
    get crud_pedidos_actualizar_url
    assert_response :success
  end

end
