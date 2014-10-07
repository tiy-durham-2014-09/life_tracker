class SchoolTracksController < ApplicationController
  before_action :set_school_track, only: [:show, :edit, :update, :destroy]

  # GET /school_tracks
  # GET /school_tracks.json
  def index
    @school_tracks = SchoolTrack.all
  end

  # GET /school_tracks/1
  # GET /school_tracks/1.json
  def show
  end

  # GET /school_tracks/new
  def new
    @school_track = SchoolTrack.new
  end

  # GET /school_tracks/1/edit
  def edit
  end

  # POST /school_tracks
  # POST /school_tracks.json
  def create
    @school_track = SchoolTrack.new(school_track_params)

    respond_to do |format|
      if @school_track.save
        format.html { redirect_to @school_track, notice: 'School track was successfully created.' }
        format.json { render :show, status: :created, location: @school_track }
      else
        format.html { render :new }
        format.json { render json: @school_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_tracks/1
  # PATCH/PUT /school_tracks/1.json
  def update
    respond_to do |format|
      if @school_track.update(school_track_params)
        format.html { redirect_to @school_track, notice: 'School track was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_track }
      else
        format.html { render :edit }
        format.json { render json: @school_track.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_tracks/1
  # DELETE /school_tracks/1.json
  def destroy
    @school_track.destroy
    respond_to do |format|
      format.html { redirect_to school_tracks_url, notice: 'School track was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_track
      @school_track = SchoolTrack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_track_params
      params.require(:school_track).permit(:school_name, :year_school_began, :year_school_ended)
    end
end
