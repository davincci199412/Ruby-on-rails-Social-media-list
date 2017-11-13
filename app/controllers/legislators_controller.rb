=begin
# define legislator controller class
# --------------------------------------
# @author Phonpanom
# @description  define legislator controller class
# @version  1.0
# ---------------------------------------
# @last edit 11/06/2017
# @by Phonpanom
=end

class LegislatorsController < ApplicationController
  before_action :set_legislator, only: [:show, :edit, :update, :destroy]

  # GET /legislators
  # GET /legislators.json
  # Show all legislators
  # @created: 11/03/2017 by Phonpanom
  # @version  1.0
  def index
    @legislators = Legislator.all
  end

  # Show legislators filtered by params[:search] (mix customer first or last name)
  # @created: 11/03/2017 by Phonpanom
  # @updated: 11/05/2017 by Phonpanom
  # @version  1.0

  def list
    if params[:search]
      if params[:search] == ""
        @legislators = Legislator.all
      else
        @legislators = Legislator.search(params[:search])
      end
    else
      @legislators = Legislator.all
    end
  end

  def show
  end

  def new
    @legislator = Legislator.new
  end

  # GET /legislators/1/edit
  def edit
  end

  # POST /legislators
  # POST /legislators.json
  def create
    @legislator = Legislator.new(legislator_params)

    respond_to do |format|
      if @legislator.save
        format.html { redirect_to @legislator, notice: 'Legislator was successfully created.' }
        format.json { render :show, status: :created, location: @legislator }
      else
        format.html { render :new }
        format.json { render json: @legislator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legislators/1
  # PATCH/PUT /legislators/1.json
  def update
    respond_to do |format|
      if @legislator.update(legislator_params)
        format.html { redirect_to @legislator, notice: 'Legislator was successfully updated.' }
        format.json { render :show, status: :ok, location: @legislator }
      else
        format.html { render :edit }
        format.json { render json: @legislator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legislators/1
  # DELETE /legislators/1.json
  def destroy
    @legislator.destroy
    respond_to do |format|
      format.html { redirect_to legislators_url, notice: 'Legislator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_legislator
      @legislator = Legislator.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def legislator_params
      params.require(:legislator).permit(:first_name, :last_name, :facebook_id, :twitter_id, :other_id, :detail)
    end
end
