class RestrauntsController < ApplicationController
  before_action :set_restraunt, only: [:show, :edit, :update, :destroy]

  # GET /restraunts
  # GET /restraunts.json
  def index
    @restraunts = Restraunt.all
  end

  # GET /restraunts/1
  # GET /restraunts/1.json
  def show
  end

  # GET /restraunts/new
  def new
    @restraunt = Restraunt.new
  end

  # GET /restraunts/1/edit
  def edit
  end

  # POST /restraunts
  # POST /restraunts.json
  def create
    @restraunt = Restraunt.new(restraunt_params)

    respond_to do |format|
      if @restraunt.save
        format.html { redirect_to @restraunt, notice: 'Restraunt was successfully created.' }
        format.json { render :show, status: :created, location: @restraunt }
      else
        format.html { render :new }
        format.json { render json: @restraunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restraunts/1
  # PATCH/PUT /restraunts/1.json
  def update
    respond_to do |format|
      if @restraunt.update(restraunt_params)
        format.html { redirect_to @restraunt, notice: 'Restraunt was successfully updated.' }
        format.json { render :show, status: :ok, location: @restraunt }
      else
        format.html { render :edit }
        format.json { render json: @restraunt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restraunts/1
  # DELETE /restraunts/1.json
  def destroy
    @restraunt.destroy
    respond_to do |format|
      format.html { redirect_to restraunts_url, notice: 'Restraunt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restraunt
      @restraunt = Restraunt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restraunt_params
      params.require(:restraunt).permit(:name, :address, :phone, :website, :image)
    end
end
