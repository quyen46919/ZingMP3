package hibernate.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	@Transactional
	public List<Album> getAlbumList() {
		return albumDAO.getAlbumList();
	}

	@Override
	@Transactional
	public boolean deleteAlbum(String albumId) {
		return albumDAO.deleteAlbum(albumId);
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
