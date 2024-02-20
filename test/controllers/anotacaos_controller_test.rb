require "test_helper"

class AnotacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anotacao = anotacaos(:one)
  end

  test "should get index" do
    get anotacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_anotacao_url
    assert_response :success
  end

  test "should create anotacao" do
    assert_difference("Anotacao.count") do
      post anotacaos_url, params: { anotacao: { data: @anotacao.data, descricao: @anotacao.descricao, nome: @anotacao.nome } }
    end

    assert_redirected_to anotacao_url(Anotacao.last)
  end

  test "should show anotacao" do
    get anotacao_url(@anotacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_anotacao_url(@anotacao)
    assert_response :success
  end

  test "should update anotacao" do
    patch anotacao_url(@anotacao), params: { anotacao: { data: @anotacao.data, descricao: @anotacao.descricao, nome: @anotacao.nome } }
    assert_redirected_to anotacao_url(@anotacao)
  end

  test "should destroy anotacao" do
    assert_difference("Anotacao.count", -1) do
      delete anotacao_url(@anotacao)
    end

    assert_redirected_to anotacaos_url
  end
end
