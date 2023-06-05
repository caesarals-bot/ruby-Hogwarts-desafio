class CharactersController < ApplicationController
    before_action :set_character, only: [:show, :edit, :update, :destroy]

    def show    
    end

    def index
        @characters = Character.all
    end

    def new
        @character = Character.new
    end

    def edit
        
    end

    def create
        @character = Character.new(character_params)
        if @character.save
            flash[:notice] = "character was created successfully."
            redirect_to @character
        else
            render :new, status: 422
        end
    end

    def update
        if @character.update(character_params)
            flash[:notice] = "character was update successfully"
            redirect_to @character
        else
            render 'edit'
        end
    end

    def destroy
        @character.destroy
        redirect_to characters_path
    end
    # refactorizamos el codigo con el metodo set_movie
    private
    def set_character
        @character = Character.find(params[:id])
    end

    def character_params
        params.require(:character).permit(:name, :location, :house)
    end
end