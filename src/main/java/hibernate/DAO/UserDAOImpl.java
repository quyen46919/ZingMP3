package hibernate.DAO;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import hibernate.entities.Song;
import hibernate.entities.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public User login (User userInput) {
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<User> query = currentSession.createQuery("from User where email = ?1 and password = ?2");
		query.setParameter(1, userInput.getEmail());
		query.setParameter(2, userInput.getPassword());
		User user = query.getSingleResult();
		return user;
	}

	@Override
	@Transactional
	public User logup (User user) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(user);
		return user;
	}
	
	@Override
	@Transactional
	public boolean checkUser (String email) {
		try {
			Session currentSession = sessionFactory.getCurrentSession();
			TypedQuery<User> query = currentSession.createQuery("from User where email = ?1");
			query.setParameter(1, email);
			query.getSingleResult();
			return false;
		} catch (NoResultException nre) {
			return true;
		}
	}

	@Override
	public boolean addFavoriteSong(String email, String songId) {
		try {
			Session currentSession = sessionFactory.openSession();
			currentSession.beginTransaction();
			
			TypedQuery<User> query = currentSession.createQuery("from User where email = ?1");
			query.setParameter(1, email);
			User user = query.getSingleResult();
			System.out.println("pass phase 1");

			Query query1 = currentSession.createSQLQuery("INSERT INTO USER_FAVORITE_SONGS VALUES (?1, ?2)");
			query1.setParameter(1, user.getId());
			query1.setString(2, songId);
			query.executeUpdate();
			System.out.println("pass phase 2");
			
			currentSession.getTransaction().commit();
//			System.out.println(user);
//			System.out.println(song);
//			
//			Set<Song> favoriteSongs = new HashSet<>();
//			favoriteSongs.add(song);
//			System.out.println("pass phase 3");
//
//			user.setFavoriteSongs(favoriteSongs);
//			currentSession.save(user);
//			System.out.println("pass phase 4");
			
			return true;
		} catch (Exception e) {
			return false;
		}
	}

}
