package hibernate.DAO;

import hibernate.entities.User;

public interface UserDAO {
	public User login(User user);
	public User logup(User user);
	public boolean checkUser(String email);
	public boolean addFavoriteSong(String email, String songId);
}
