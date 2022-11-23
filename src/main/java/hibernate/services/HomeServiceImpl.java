package hibernate.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import hibernate.DAO.AlbumDAO;
import hibernate.DAO.SingerDAO;
import hibernate.DAO.SongDAO;
import hibernate.entities.Album;
import hibernate.entities.Singer;
import hibernate.entities.Song;

@Repository
public class HomeServiceImpl implements HomeService{
	@Autowired
	private SongDAO songDAO;
	
	@Autowired
	private AlbumDAO albumDAO;
	
	@Autowired
	private SingerDAO singerDAO;

	@Override
	@Transactional
	public List<Album> getAlbumList() {
		return albumDAO.getAlbumList();
	}

	@Override
	@Transactional
	public List<Singer> getSingerList() {
		return singerDAO.getSingerList();
	}

	@Override
	@Transactional
	public List<Song> getSongList() {
		return songDAO.getSongList();
	}
}
