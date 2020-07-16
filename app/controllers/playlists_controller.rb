class PlaylistsController < ApplicationController

    def index 
        @playlists = Playlist.all
    end 


    def new
        @playlist = Playlist.new
    end 

    def create
        @playlist = Playlist.new(playlist_params)
        if @playlist.save
            redirect_to playlists_path
        else 
            render :new
        end 
    end 


    def show 
        @playlist = Playlist.find_by(id: params[:id])
        @songs = Song.all.where(playlist_id: params[:id])
        if @playlist
            render :show
        else 
            redirect_to playlists_path
        end 
    end 

    def edit
        @playlist = Playlist.find_by(id: params[:id])
        if @playlist
            render :edit
        else 
            redirect_to playlists_path
        end 
    end 

    def update 
        @playlist = Playlist.find_by(id: params[:id])
        if @playlist
            @playlist.update(playlist_params)
            redirect_to playlist_path(@playlist)
        else
            redirect_to playlists_path
        end 
    end 
    

    def destroy
        @playlist = Playlist.find_by(id: params[:id])
        if @playlist 
            @playlist.destroy
            redirect_to playlists_path
        else
            redirect_to playlists_path
        end 
    end 


    private 
    
    def playlist_params
        params.require(:playlist).permit(
            :title
        )
    end 


end 