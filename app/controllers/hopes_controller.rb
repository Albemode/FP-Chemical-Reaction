class HopesController < ApplicationController
  before_action :set_hope, only: [:show, :edit, :update, :destroy]

  # GET /hopes
  # GET /hopes.json
  def index
    @hopes = Hope.all
  end

  # GET /hopes/1
  # GET /hopes/1.json
  def show
  end

  # GET /hopes/new
  def new
    @hope = Hope.new
  end

  # GET /hopes/1/edit
  def edit
  end

  # POST /hopes
  # POST /hopes.json
  def create
    @hope = Hope.new(hope_params)

    respond_to do |format|
      if @hope.save
        format.html { redirect_to @hope, notice: 'Hope was successfully created.' }
        format.json { render :show, status: :created, location: @hope }
      else
        format.html { render :new }
        format.json { render json: @hope.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hopes/1
  # PATCH/PUT /hopes/1.json
  def update
    respond_to do |format|
      if @hope.update(hope_params)
        format.html { redirect_to @hope, notice: 'Hope was successfully updated.' }
        format.json { render :show, status: :ok, location: @hope }
      else
        format.html { render :edit }
        format.json { render json: @hope.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hopes/1
  # DELETE /hopes/1.json
  def destroy
    @hope.destroy
    respond_to do |format|
      format.html { redirect_to hopes_url, notice: 'Hope was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hope
      @hope = Hope.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hope_params
      params.require(:hope).permit(:name, :emotion_name, :title, :size_mb, :records, :file, :formula, :chemistry, :legal_status, :clinical_data, :cas_number, :states, :attitudes, :affection, :drug, :side_effects, :causes, :psychology, :theroy)
    end
end
