package hibernate.DAO;

import java.util.List;

import hibernate.entities.Album;

public interface AlbumDAO {
	public Album createAlbum(Album album);
	public List<Album> getAlbumList();
	public boolean deleteAlbum(String albumId);
	public Album getAlbumSongList(String id);
	public List<Album> searchAlbum(String searchText);
}
