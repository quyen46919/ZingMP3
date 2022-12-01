package hibernate.services;

import hibernate.entities.User;

public interface UserService {
	public User login(User user);
	public User logup(User user);
	public boolean checkDuplicateEmail(String email);
	public boolean addFavoriteSong(String email, String songId);
}
