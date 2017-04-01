class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :update, :destroy]

    # GET /usuarios
    def index
      @usuarios = Usuario.all
      json_response(@usuarios)
    end

    # POST /usuarios
    def create
      @usuario = Usuario.create!(usuario_params)

      if params['id']
        json_response({"error": "No se puede crear usuario con id"}, 400)
      elsif params["nombre"] && params["usuario"]
        json_response(@usuario, 200)
      else
        json_response({"error": "La creación ha fallado"}, 500)
      end
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
