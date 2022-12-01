package hibernate.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import hibernate.DAO.UserDAO;
import hibernate.entities.User;

@Repository
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public User login(User user) {
		return userDAO.login(user);
	}

	@Override
	@Transactional
	public User logup(User user) {
		return userDAO.logup(user);
	}

	@Override
	@Transactional
	public boolean checkDuplicateEmail(String email) {
		return userDAO.checkUser(email);
	}
	
	@Override
	@Transactional
	public boolean addFavoriteSong(String email, String songId) {
		return userDAO.addFavoriteSong(email, songId);
	}
}
