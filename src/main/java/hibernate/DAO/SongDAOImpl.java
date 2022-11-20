package hibernate.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import hibernate.entities.Song;

@Repository
public class SongDAOImpl implements SongDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public Song createSong(Song song) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(song);
		return song;
	}

	@Override
	public boolean deleteSong(String songId) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.get(Song.class, songId);
		return true;
		
	}
	
}
