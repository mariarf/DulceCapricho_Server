require 'test_helper'

class EventosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eventos_index_url
    assert_response :success
  end

  test "should get leer" do
    get eventos_leer_url
    assert_response :success
  end

  test "should get crear" do
    get eventos_crear_url
    assert_response :success
  end

  test "should get actualizar" do
    get eventos_actualizar_url
    assert_response :success
  end

end
