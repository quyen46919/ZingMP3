package hibernate.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import hibernate.DAO.AlbumDAO;
import hibernate.entities.Album;

@Repository
public class AlbumServiceImpl implements AlbumService{
	
	@Autowired
	private AlbumDAO albumDAO;
	
	@Override
	@Transactional
	public Album getAlbumSongList(String id) {
		return albumDAO.getAlbumSongList(id);
	}

}
