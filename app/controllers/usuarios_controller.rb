class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :update, :destroy]

    # GET /usuarios
    def index
      @usuarios = Usuario.all
      json_response(@usuarios)
    end

    # POST /usuarios
    def create
      if params['id']
        json_response({"error": "No se puede crear usuario con id"}, 400)
      elsif params["nombre"] && params["usuario"]
        @usuario = Usuario.create!(usuario_params)
        json_response(@usuario, :created)
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
      if params['id']
        json_response({"error": "id no es modificable"}, 400)
      else
        @usuario.update(usuario_params)
        json_response(@usuario, 200)
      end
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
