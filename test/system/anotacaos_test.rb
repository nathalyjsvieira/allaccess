require "application_system_test_case"

class AnotacaosTest < ApplicationSystemTestCase
  setup do
    @anotacao = anotacaos(:one)
  end

  test "visiting the index" do
    visit anotacaos_url
    assert_selector "h1", text: "Anotacaos"
  end

  test "should create anotacao" do
    visit anotacaos_url
    click_on "New anotacao"

    fill_in "Data", with: @anotacao.data
    fill_in "Descricao", with: @anotacao.descricao
    fill_in "Nome", with: @anotacao.nome
    click_on "Create Anotacao"

    assert_text "Anotacao was successfully created"
    click_on "Back"
  end

  test "should update Anotacao" do
    visit anotacao_url(@anotacao)
    click_on "Edit this anotacao", match: :first

    fill_in "Data", with: @anotacao.data
    fill_in "Descricao", with: @anotacao.descricao
    fill_in "Nome", with: @anotacao.nome
    click_on "Update Anotacao"

    assert_text "Anotacao was successfully updated"
    click_on "Back"
  end

  test "should destroy Anotacao" do
    visit anotacao_url(@anotacao)
    click_on "Destroy this anotacao", match: :first

    assert_text "Anotacao was successfully destroyed"
  end
end
