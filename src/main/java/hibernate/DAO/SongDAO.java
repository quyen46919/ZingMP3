package hibernate.DAO;

import java.util.List;
import hibernate.entities.Song;

public interface SongDAO {
	public Song createSong(Song song);
	public List<Song> getSongList();
	public boolean deleteSong(String songId);
	public List<Song> searchSong(String searchText);
}
