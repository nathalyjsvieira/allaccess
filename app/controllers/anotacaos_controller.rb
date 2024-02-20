class AnotacaosController < ApplicationController
  before_action :set_anotacao, only: %i[ show edit update destroy ]

  # GET /anotacaos or /anotacaos.json
  def index
    @anotacaos = Anotacao.all
  end

  # GET /anotacaos/1 or /anotacaos/1.json
  def show
  end

  # GET /anotacaos/new
  def new
    @anotacao = Anotacao.new
  end

  # GET /anotacaos/1/edit
  def edit
    respond_to do |format|
      format.js
      format.html
    end
  end

  # POST /anotacaos or /anotacaos.json
  def create
    @anotacao = Anotacao.new(anotacao_params)

    if @anotacao.save
      redirect_to anotacaos_path, notice: 'Anotação criada com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /anotacaos/1 or /anotacaos/1.json
  def update
    if @anotacao.update(anotacao_params)
      redirect_to anotacaos_path, notice: 'Anotação atualizada com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /anotacaos/1 or /anotacaos/1.json
  def destroy
    @anotacao.destroy
  
    redirect_to anotacaos_path, notice: 'Anotação removida com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anotacao
      @anotacao = Anotacao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def anotacao_params
      params.require(:anotacao).permit(:nome, :descricao, :data)
    end
end
