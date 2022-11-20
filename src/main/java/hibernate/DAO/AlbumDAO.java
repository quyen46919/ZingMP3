package hibernate.DAO;

import hibernate.entities.Album;

public interface AlbumDAO {
	public Album createAlbum(Album album);
	public boolean deleteAlbum(String albumId);
}
