package hibernate.DAO;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import hibernate.entities.Album;
import hibernate.entities.Singer;
import hibernate.entities.Song;

@Repository
public class AlbumDAOImpl implements AlbumDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public Album createAlbum(Album album) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(album);
		return album;
	}
	
	@Override
	public List<Album> getAlbumList() {
		Session currentSession = sessionFactory.getCurrentSession();
		return currentSession.createQuery("Select new Album(a.id, a.name, a.description, a.imageUrl) from Album a", Album.class).getResultList();
	}

	@Override
	public boolean deleteAlbum(String songId) {
		Session currentSession = sessionFactory.getCurrentSession();
		try {
			 Query query = currentSession.createQuery("Delete from Album where id=:id");
			 query.setParameter("id", songId);
			 query.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}		
	}

	@Override
	@Transactional
	public Album getAlbumSongList(String id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Album album = (Album) currentSession
				.createQuery( "Select new Album(a.id, a.name, a.description, a.imageUrl) from Album a where a.id = ?1")
				.setParameter(1, id)
				.getSingleResult();
		
		List<Song> songs = (List<Song>) currentSession
				.createQuery("Select new Song(s.id, s.name, s.country, s.type, s.imageUrl, s.source) from Song s where s.albumId = ?1")
				.setParameter(1, id)
				.getResultList();
		System.out.println("songs = " + songs);
		
		album.setSongs(songs);
		System.out.println("albumRs = " + album);

		return album;
	}
}
