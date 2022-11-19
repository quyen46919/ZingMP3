package hibernate.DAO;

import java.util.List;

import javax.persistence.ManyToOne;
import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import hibernate.entities.UserSong;

public class UserSongDAOImpl implements UserSongDAO{
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<UserSong> getUserSongs(int UserId) {
		Session currentSession = sessionFactory.getCurrentSession();
		TypedQuery<UserSong> query = currentSession.createQuery("from CustomerSale", UserSong.class);
		List<UserSong> customers = query.getResultList();
		return customers;
	}

	@Override
	@Transactional
	public void saveUserSong(UserSong userSong) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(userSong);
	}
}
