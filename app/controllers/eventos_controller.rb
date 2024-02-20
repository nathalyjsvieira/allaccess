class EventosController < ApplicationController
  before_action :set_evento, only: %i[ show edit update destroy ]

  # GET /eventos or /eventos.json
  def index
    @eventos = Evento.all
    respond_to do |format|
      format.html
      format.json { render json: @eventos.map { |evento| { title: evento.nome, start: evento.inicio, end: evento.fim } } }
    end
  end

  # GET /eventos/1 or /eventos/1.json
  def show
  end

  # GET /eventos/new
  def new
    @evento = Evento.new
  end

  # GET /eventos/1/edit
  def edit
  end

  # POST /eventos or /eventos.json
  def create
    @evento = Evento.new(evento_params)

    if @evento.save
      redirect_to eventos_path, notice: 'Evento criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /eventos/1 or /eventos/1.json
  def update
    
    if @evento.update(evento_params)
      redirect_to eventos_path, notice: 'Evento atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /eventos/1 or /eventos/1.json
  def destroy
    @evento.destroy

    redirect_to eventos_path, notice: 'Evento removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evento
      @evento = Evento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evento_params
      params.require(:evento).permit(:nome, :descricao, :inicio, :fim)
    end
end
