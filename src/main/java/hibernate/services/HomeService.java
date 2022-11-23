package hibernate.services;

import java.util.List;

import hibernate.entities.Album;
import hibernate.entities.Singer;
import hibernate.entities.Song;

public interface HomeService {
	public List<Album> getAlbumList();
	public List<Singer> getSingerList();
	public List<Song> getSongList();
}
