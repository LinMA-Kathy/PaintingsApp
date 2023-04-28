class PaintingsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    if params[:search]
      @paintings = Painting.search(params[:search]).order(created_at: :desc)
      if @paintings.count == 1
        redirect_to painting_path(@paintings.first)
      else
        flash.now[:notice] = "No paintings found" if @paintings.empty?
        render :index
      end
    else
      @paintings = Painting.all
    end
    puts "Number of paintings fetched: #{@paintings.count}"
  end

  def new
    @painting = Painting.new
  end

  def create
    artist = Artist.find_or_create_by(first_name: params[:painting][:artist_first_name], last_name: params[:painting][:artist_last_name])

    @painting = current_user.paintings.new(painting_params)
    @painting.artist = artist

    if @painting.save
      redirect_to @painting, notice: 'Painting was successfully created.'
    else
      render :new
    end
  end

  def show
    @painting = Painting.find(params[:id])
    @painting.increment!(:views)
    if @painting.artist.nil?
      @artist_name = "Unknown"
    else
      @artist_name = @painting.artist.full_name
    end
    puts "Image URL: #{@painting.image_url}"
  end


  def edit
    @painting = Painting.find(params[:id])
  end

  def update
    @painting = Painting.find(params[:id])
    if @painting.update(painting_params)
      redirect_to painting_path(@painting), notice: 'Painting was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    redirect_to paintings_path
  end

  private

  def painting_params
    params.require(:painting).permit(:title, :remote_image_url, :description, :year)
  end

end
