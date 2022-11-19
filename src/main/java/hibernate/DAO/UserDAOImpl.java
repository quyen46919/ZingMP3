package hibernate.DAO;

import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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

}
