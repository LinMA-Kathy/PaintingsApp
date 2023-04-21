class PaintingsController < ApplicationController
  before_action :set_painting, only: %i[ show edit update destroy ]


   # GET /paintings or /paintings.json
  def index
    if params[:search]
      @paintings = Painting.search(params[:search]).order(created_at: :desc)
      else
      @paintings = Painting.all

    end
  end

  def show
    @painting = Painting.find(params[:id])
    @painting.increment!(:views)
  end


  # GET /paintings/new
  def new
    @painting = Painting.new
  end


  # GET /paintings/1/edit
  def edit
  end

  # POST /paintings or /paintings.json
  def create
    artist = Artist.find_or_create_by(first_name: painting_params[:artist_first_name], last_name: painting_params[:artist_last_name])
    @painting = Painting.new(painting_params.except(:artist_first_name, :artist_last_name))
    @painting.artist = artist
    @painting.views = 0 # Set default views to 0
    respond_to do |format|
      if @painting.save
        format.html { redirect_to painting_url(@painting), notice: "Painting was successfully created." }
        format.json { render :show, status: :created, location: @painting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paintings/1 or /paintings/1.json
  def update
    respond_to do |format|
      if @painting.update(painting_params)
        format.html { redirect_to painting_url(@painting), notice: "Painting was successfully updated." }
        format.json { render :show, status: :ok, location: @painting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @painting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paintings/1 or /paintings/1.json
  def destroy
    @painting.destroy

    respond_to do |format|
      format.html { redirect_to paintings_url, notice: "Painting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_painting
      @painting = Painting.find(params[:id])
    end

    def painting_params
      params.require(:painting).permit(:title, :image_url, :description, :year, :artist_first_name, :artist_last_name)
    end
end
