class PoposController < ApplicationController
  before_action :set_popo, only: [:show, :edit, :update, :destroy]

  # GET /popos
  # GET /popos.json
  def index
    @popos = Popo.all
  end

  # GET /popos/1
  # GET /popos/1.json
  def show
  end

  # GET /popos/new
  def new
    @popo = Popo.new
  end

  # GET /popos/1/edit
  def edit
  end

  # POST /popos
  # POST /popos.json
  def create
    @popo = Popo.new(popo_params)

    respond_to do |format|
      if @popo.save
        format.html { redirect_to @popo, notice: 'Popo was successfully created.' }
        format.json { render :show, status: :created, location: @popo }
      else
        format.html { render :new }
        format.json { render json: @popo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /popos/1
  # PATCH/PUT /popos/1.json
  def update
    respond_to do |format|
      if @popo.update(popo_params)
        format.html { redirect_to @popo, notice: 'Popo was successfully updated.' }
        format.json { render :show, status: :ok, location: @popo }
      else
        format.html { render :edit }
        format.json { render json: @popo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /popos/1
  # DELETE /popos/1.json
  def destroy
    @popo.destroy
    respond_to do |format|
      format.html { redirect_to popos_url, notice: 'Popo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_popo
      @popo = Popo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def popo_params
      params.require(:popo).permit(:title)
    end
end
