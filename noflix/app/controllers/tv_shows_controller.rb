class TvShowsController < ApplicationController
  before_action :set_tv_show, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]



  # GET /tv_shows
  # GET /tv_shows.json
  def index
    @tv_shows = TvShow.all
  end

  # GET /tv_shows/1
  # GET /tv_shows/1.json
  def show
  end

  # GET /tv_shows/new
  def new
    @tv_show = TvShow.new
    if current_user.is_admin
      @tv_show.owner_id = nil
    else
      @tv_show.owner_id = current_user.id
    end
  end

  # GET /tv_shows/1/edit
  def edit
    if !current_user.is_admin and current_user.id != @tv_show.owner_id
      redirect_to TvShow
    end
  end

  # POST /tv_shows
  # POST /tv_shows.json
  def create
    name = tv_show_params[:director_id]
    if !Director.exists?(:name => name)
      Director.create(name: name)
    end
    new_tsp = tv_show_params
    new_tsp[:director_id] = Director.find_by_name(name).id
    new_tsp[:owner_id] = current_user.id
    @tv_show = TvShow.new(new_tsp)


    respond_to do |format|
      if @tv_show.save
        format.html { redirect_to @tv_show, notice: 'Tv show was successfully created.' }
        format.json { render :show, status: :created, location: @tv_show }
      else
        format.html { render :new }
        format.json { render json: @tv_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tv_shows/1
  # PATCH/PUT /tv_shows/1.json
  def update
    respond_to do |format|
      if @tv_show.update(tv_show_params)
        format.html { redirect_to @tv_show, notice: 'Tv show was successfully updated.' }
        format.json { render :show, status: :ok, location: @tv_show }
      else
        format.html { render :edit }
        format.json { render json: @tv_show.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tv_shows/1
  # DELETE /tv_shows/1.json
  def destroy
    @tv_show.destroy
    respond_to do |format|
      format.html { redirect_to tv_shows_url, notice: 'Tv show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tv_show
      @tv_show = TvShow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tv_show_params
      params.require(:tv_show).permit(:title, :language, :country, :category, :start_year, :end_year, :plot, :director_id, :owner_id)
    end
end
