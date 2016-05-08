class MutualFundListsController < ApplicationController
  before_action :set_mutual_fund_list, only: [:show, :edit, :update, :destroy]

  # GET /mutual_fund_lists
  # GET /mutual_fund_lists.json
  def index
    @mutual_fund_lists = MutualFundList.all
  end

  # GET /mutual_fund_lists/1
  # GET /mutual_fund_lists/1.json
  def show
  end

  # GET /mutual_fund_lists/new
  def new
    @mutual_fund_list = MutualFundList.new
  end

  # GET /mutual_fund_lists/1/edit
  def edit
  end

  # POST /mutual_fund_lists
  # POST /mutual_fund_lists.json
  def create
    @mutual_fund_list = MutualFundList.new(mutual_fund_list_params)

    respond_to do |format|
      if @mutual_fund_list.save
        format.html { redirect_to @mutual_fund_list, notice: 'Mutual fund list was successfully created.' }
        format.json { render :show, status: :created, location: @mutual_fund_list }
      else
        format.html { render :new }
        format.json { render json: @mutual_fund_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mutual_fund_lists/1
  # PATCH/PUT /mutual_fund_lists/1.json
  def update
    respond_to do |format|
      if @mutual_fund_list.update(mutual_fund_list_params)
        format.html { redirect_to @mutual_fund_list, notice: 'Mutual fund list was successfully updated.' }
        format.json { render :show, status: :ok, location: @mutual_fund_list }
      else
        format.html { render :edit }
        format.json { render json: @mutual_fund_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mutual_fund_lists/1
  # DELETE /mutual_fund_lists/1.json
  def destroy
    @mutual_fund_list.destroy
    respond_to do |format|
      format.html { redirect_to mutual_fund_lists_url, notice: 'Mutual fund list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mutual_fund_list
      @mutual_fund_list = MutualFundList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mutual_fund_list_params
      params.require(:mutual_fund_list).permit(:ticker_list)
    end
end
