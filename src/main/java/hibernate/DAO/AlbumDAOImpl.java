package hibernate.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import hibernate.entities.Album;
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
	public boolean deleteAlbum(String songId) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.get(Song.class, songId);
		return true;
		
	}
	
}
