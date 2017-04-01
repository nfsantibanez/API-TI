class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :update, :destroy]
  before_action :validate_usuario, only: [:create, :update, :destroy]

    # GET /usuarios
    def index
      @usuarios = Usuario.all
      json_response(@usuarios)
    end

    # POST /usuarios
    def create
      @usuario = Usuario.create!(usuario_params)
      json_response(@usuario, :created)
    end

    # GET /usuarios/:id
    def show
      json_response(@usuario)
    end

    # PUT /usuarios/:id
    def update
      @usuario.update(usuario_params)
      json_response(@usuario, :updated)
    end

    # DELETE /usuarios/:id
    def destroy
      @usuario.destroy

    end

    private

    def usuario_params
      # whitelist params
      #params.require(:nombre)
      #params.require(:usuario)
      params.permit(:nombre, :usuario, :apellido, :twitter)
    end

    def set_usuario
      @usuario = Usuario.find(params[:id])
    end
end
