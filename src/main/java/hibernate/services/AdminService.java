package hibernate.services;

import java.util.List;

import hibernate.entities.Album;
import hibernate.entities.Song;

public interface AdminService {
	public Album createAlbum(Album album);
	public boolean deleteAlbum(String albumId);
	public List<Album> getAlbumList();
	public Song createSong(Song song);
	public boolean deleteSong(String songId);
}
