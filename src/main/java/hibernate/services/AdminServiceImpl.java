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
public class AdminServiceImpl implements AdminService {
	@Autowired
	private SongDAO songDAO;
	
	@Autowired
	private AlbumDAO albumDAO;
	
	@Autowired
	private SingerDAO singerDAO;

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
	public Singer createSinger(Singer singer) {
		return singerDAO.createSinger(singer);
	}
	
	@Override
	@Transactional
	public List<Singer> getSingerList() {
		return singerDAO.getSingerList();
	}

	@Override
	@Transactional
	public boolean deleteSinger(String singerId) {
		return singerDAO.deleteSinger(singerId);
	}

	@Override
	public Song createSong(Song song) {
		return songDAO.createSong(song);
	}
	
	@Override
	@Transactional
	public List<Song> getSongList() {
		return songDAO.getSongList();
	}

	@Override
	@Transactional
	public boolean deleteSong(String songId) {
		return songDAO.deleteSong(songId);
	}
}
