package hibernate.DAO;

import hibernate.entities.Song;

public interface SongDAO {
	public Song createSong(Song song);
	public boolean deleteSong(String songId);
}
