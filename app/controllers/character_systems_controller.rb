class CharacterSystemsController < ApplicationController
  before_action :set_character_system, only: [:show, :edit, :update, :destroy]

  # GET /character_systems
  # GET /character_systems.json
  def index
    @character_systems = CharacterSystem.all
  end

  # GET /character_systems/1
  # GET /character_systems/1.json
  def show
  end

  # GET /character_systems/new
  def new
    @character_system = CharacterSystem.new
  end

  # GET /character_systems/1/edit
  def edit
  end

  # POST /character_systems
  # POST /character_systems.json
  def create
    @character_system = CharacterSystem.new(character_system_params)

    respond_to do |format|
      if @character_system.save
        format.html { redirect_to @character_system, notice: 'Character system was successfully created.' }
        format.json { render :show, status: :created, location: @character_system }
      else
        format.html { render :new }
        format.json { render json: @character_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_systems/1
  # PATCH/PUT /character_systems/1.json
  def update
    respond_to do |format|
      if @character_system.update(character_system_params)
        format.html { redirect_to @character_system, notice: 'Character system was successfully updated.' }
        format.json { render :show, status: :ok, location: @character_system }
      else
        format.html { render :edit }
        format.json { render json: @character_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_systems/1
  # DELETE /character_systems/1.json
  def destroy
    @character_system.destroy
    respond_to do |format|
      format.html { redirect_to character_systems_url, notice: 'Character system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_system
      @character_system = CharacterSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_system_params
      params.require(:character_system).permit(:system, :characters)
    end
end
