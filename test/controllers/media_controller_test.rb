require 'test_helper'

class MediaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medium = media(:one)
  end

  test "should get index" do
    get media_url
    assert_response :success
  end

  test "should get new" do
    get new_medium_url
    assert_response :success
  end

  test "should show medium" do
    get medium_url(@medium)
    assert_response :success
  end

  test "should get edit" do
    get edit_medium_url(@medium)
    assert_response :success
  end

  test "should update medium" do
    patch medium_url(@medium), params: { medium: { alto: @medium.alto, ancho: @medium.ancho, descripcion: @medium.descripcion, fecha: @medium.fecha, nombre: @medium.nombre, size: @medium.size, tipo: @medium.tipo, url: @medium.url } }
    assert_redirected_to medium_url(@medium)
  end

  test "should destroy medium" do
    assert_difference('Medium.count', -1) do
      delete medium_url(@medium)
    end

    assert_redirected_to media_url
  end
end
