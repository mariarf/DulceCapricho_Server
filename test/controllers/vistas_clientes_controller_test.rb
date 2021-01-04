require 'test_helper'

class VistasClientesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vistas_clientes_index_url
    assert_response :success
  end

  test "should get encargos" do
    get vistas_clientes_encargos_url
    assert_response :success
  end

  test "should get eventos" do
    get vistas_clientes_eventos_url
    assert_response :success
  end

  test "should get contacto" do
    get vistas_clientes_contacto_url
    assert_response :success
  end

  test "should get politica y condiciones" do
    get vistas_clientes_politica y condiciones_url
    assert_response :success
  end

end
