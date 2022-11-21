package hibernate.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import hibernate.entities.Album;

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
	
}
