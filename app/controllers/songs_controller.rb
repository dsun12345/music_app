class SongsController < ApplicationController

    def index
        @songs = Song.all.where(genre_id: params[:genre_id])
    end 

    def new
        @genre = Genre.find_by(id: params[:genre_id])
        @song = Song.new
    end 

    def create
        @song = Song.new(song_params)
        if @song.save
            redirect_to song_path(@song)
        else 
            render :new
        end 
    end 


    def show 
        @song = Song.find_by(id: params[:id])
        if @song
            render :show
        else 
            redirect_to songs_path
        end 
    end 

    def edit
        @song = Song.find_by(id: params[:id])
        if @song
            render :edit
        else 
            redirect_to songs_path
        end 
    end 

    def update 
        @song = Song.find_by(id: params[:id])
        if @song
            @song.update(song_params)
            redirect_to song_path(@song)
        else
            redirect_to songs_path
        end 
    end 
    

    def destroy
        @song = Song.find_by(id: params[:id])
        if @song 
            @song.destroy
            redirect_to songs_path
        else
            redirect_to songs_path
        end 
    end 

private 
    
    def song_params
        params.require(:song).permit(
            :title,
            :artist,
            :genre_id
        )
    end 


end 