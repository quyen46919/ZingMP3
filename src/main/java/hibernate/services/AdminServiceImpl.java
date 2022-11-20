package hibernate.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import hibernate.DAO.AlbumDAO;
import hibernate.DAO.SongDAO;
import hibernate.entities.Album;
import hibernate.entities.Song;

@Repository
public class AdminServiceImpl implements AdminService {
	@Autowired
	private SongDAO songDAO;
	
	@Autowired
	private AlbumDAO albumDAO;

	@Override
	public Album createAlbum(Album album) {
		return albumDAO.createAlbum(album);
	}

	@Override
	public boolean deleteAlbum(String albumId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Song createSong(Song song) {
		return songDAO.createSong(song);
	}

	@Override
	public boolean deleteSong(String songId) {
		// TODO Auto-generated method stub
		return false;
	}

}
