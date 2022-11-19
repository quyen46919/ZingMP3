package hibernate.DAO;

import java.util.List;

import hibernate.entities.UserSong;

public interface UserSongDAO {
	public List<UserSong> getUserSongs(int userId);
	public void saveUserSong(UserSong userSong);
}
