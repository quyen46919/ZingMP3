package hibernate.DAO;

import java.util.List;
import hibernate.entities.Singer;

public interface SingerDAO {
	public Singer createSinger(Singer singer);
	public List<Singer> getSingerList();
	public boolean deleteSinger(String singerId);
	public List<Singer> searchSinger(String searchText);
	public boolean updateSinger(Singer singer);
}
