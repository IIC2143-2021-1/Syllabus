class GuidelinesController < ApplicationController
  before_action :set_guideline, only: %i[ show edit update destroy ]

  # GET /guidelines or /guidelines.json
  def index
    @guidelines = Guideline.all
  end

  # GET /guidelines/1 or /guidelines/1.json
  def show
  end

  # GET /guidelines/new
  def new
    @guideline = Guideline.new
  end

  # GET /guidelines/1/edit
  def edit
  end

  # POST /guidelines or /guidelines.json
  def create
    @guideline = Guideline.new(guideline_params)

    respond_to do |format|
      if @guideline.save
        format.html { redirect_to @guideline, notice: "Guideline was successfully created." }
        format.json { render :show, status: :created, location: @guideline }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @guideline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guidelines/1 or /guidelines/1.json
  def update
    respond_to do |format|
      if @guideline.update(guideline_params)
        format.html { redirect_to @guideline, notice: "Guideline was successfully updated." }
        format.json { render :show, status: :ok, location: @guideline }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @guideline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guidelines/1 or /guidelines/1.json
  def destroy
    @guideline.destroy
    respond_to do |format|
      format.html { redirect_to guidelines_url, notice: "Guideline was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guideline
      @guideline = Guideline.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guideline_params
      params.require(:guideline).permit(:test, :semester, :year, :size_mb, :description)
    end
end
