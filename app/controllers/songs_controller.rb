class SongsController < ApplicationController
    before_action :set_song!, only: [:show, :edit, :update, :destroy]
    
    def index
        @songs = Song.all
    end

    def show
    end

    def new
        @new_song = Song.new
    end

    def create
        new_song = Song.new(song_params(:title, :released, :release_year, :artist_name, :genre))
        if new_song.save
            redirect_to song_path(new_song)
        else
            redirect_to :new
        end
    end

    def edit
    end

    def update
        if @song.update(song_params(:title, :released, :release_year, :artist_name, :genre))
            redirect_to song_path(@song)
        else
            render :edit
        end
    end

    def destroy
        @song.destroy
        redirect_to songs_path
    end

    private

    def set_song!
        @song = Song.find(params[:id])
    end

    def song_params(*args)
        params.require(:song).permit(:title, :released, :release_year, :artist_name, :genre)
    end
end
