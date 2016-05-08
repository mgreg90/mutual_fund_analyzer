class MutualFundDataController < ApplicationController
  before_action :set_mutual_fund_datum, only: [:show, :edit, :update, :destroy]

  # GET /mutual_fund_data
  # GET /mutual_fund_data.json
  def index
    @mutual_fund_data = MutualFundDatum.all
  end

  # GET /mutual_fund_data/1
  # GET /mutual_fund_data/1.json
  def show
  end

  # GET /mutual_fund_data/new
  def new
    @mutual_fund_datum = MutualFundDatum.new
  end

  # GET /mutual_fund_data/1/edit
  def edit
  end

  # POST /mutual_fund_data
  # POST /mutual_fund_data.json
  def create
    @mutual_fund_datum = MutualFundDatum.new(mutual_fund_datum_params)

    respond_to do |format|
      if @mutual_fund_datum.save
        format.html { redirect_to @mutual_fund_datum, notice: 'Mutual fund datum was successfully created.' }
        format.json { render :show, status: :created, location: @mutual_fund_datum }
      else
        format.html { render :new }
        format.json { render json: @mutual_fund_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mutual_fund_data/1
  # PATCH/PUT /mutual_fund_data/1.json
  def update
    respond_to do |format|
      if @mutual_fund_datum.update(mutual_fund_datum_params)
        format.html { redirect_to @mutual_fund_datum, notice: 'Mutual fund datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @mutual_fund_datum }
      else
        format.html { render :edit }
        format.json { render json: @mutual_fund_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mutual_fund_data/1
  # DELETE /mutual_fund_data/1.json
  def destroy
    @mutual_fund_datum.destroy
    respond_to do |format|
      format.html { redirect_to mutual_fund_data_url, notice: 'Mutual fund datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mutual_fund_datum
      @mutual_fund_datum = MutualFundDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mutual_fund_datum_params
      params.require(:mutual_fund_datum).permit(:raw_yf_date, :raw_mstar_data)
    end
end
