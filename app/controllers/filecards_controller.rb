class FilecardsController < ApplicationController
  before_action :set_filecard, only: [:show, :edit, :update, :destroy]

  # GET /filecards
  # GET /filecards.json
  def index
    @filecards = Filecard.all
  end

  # GET /filecards/1
  # GET /filecards/1.json
  def show
  end

  # GET /filecards/new
  def new
    @filecard = Filecard.new
  end

  # GET /filecards/1/edit
  def edit
  end

  # POST /filecards
  # POST /filecards.json
  def create
    @filecard = Filecard.new(filecard_params)

    respond_to do |format|
      if @filecard.save
        format.html { redirect_to @filecard, notice: 'Filecard was successfully created.' }
        format.json { render :show, status: :created, location: @filecard }
      else
        format.html { render :new }
        format.json { render json: @filecard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filecards/1
  # PATCH/PUT /filecards/1.json
  def update
    respond_to do |format|
      if @filecard.update(filecard_params)
        format.html { redirect_to @filecard, notice: 'Filecard was successfully updated.' }
        format.json { render :show, status: :ok, location: @filecard }
      else
        format.html { render :edit }
        format.json { render json: @filecard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filecards/1
  # DELETE /filecards/1.json
  def destroy
    @filecard.destroy
    respond_to do |format|
      format.html { redirect_to filecards_url, notice: 'Filecard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filecard
      @filecard = Filecard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filecard_params
      params.require(:filecard).permit(:question, :answer, :public, :submitDate, :subject_id, :user_id)
    end
end
