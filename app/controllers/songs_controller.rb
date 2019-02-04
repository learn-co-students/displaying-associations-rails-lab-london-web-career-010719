class SongsController < ApplicationController

     before_action :find_song, only: [:edit, :show, :update, :destroy]
    before_action :find_songs, only: [:index]
    before_action :find_artists, only: [:update]
  def index
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit

  end

  def update

    @song.update(song_params)

    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    flash[:notice] = "Song deleted."
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

  def find_songs
    @songs = Song.all
  end 

  def find_song
    @song = Song.find(params[:id])
  end 

  def find_artists
    @artists = Artist.all
  end 
end

