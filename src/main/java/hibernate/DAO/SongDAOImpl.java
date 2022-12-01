package hibernate.DAO;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import hibernate.entities.Album;
import hibernate.entities.Singer;
import hibernate.entities.Song;

@Repository
public class SongDAOImpl implements SongDAO{
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public Song createSong(Song song) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(song);
		return song;
	}
	
	@Override
	public List<Song> getSongList() {
		Session currentSession = sessionFactory.getCurrentSession();
		List<Object[]> songList2 = currentSession.createQuery(
				"Select s.id, s.name, s.country, s.type, s.imageUrl, s.source, a.id as albumId, a.name as albumName, a.description, si.id as singerId, si.name as singerName, si.story from Song s left join Album a on s.albumId = a.id left join Singer si on s.singerId = si.id", Object[].class).getResultList();
//		System.out.println("songList2" + songList2);
		
		List<Song> mediaList = new ArrayList<>();
		for (Object[] row : songList2) {
			String abc = Arrays.toString(row);
			String converted = abc.substring(1, abc.length() - 1);
			Song song = new Song();
		    song.setId(converted.split(", ")[0]);
		    song.setName(converted.split(", ")[1]);
		    song.setCountry(converted.split(", ")[2]);
		    song.setType(converted.split(", ")[3]);
		    song.setImageUrl(converted.split(", ")[4]);
		    song.setSource(converted.split(", ")[5]);
	    
		    Album album = new Album();
		    album.setId((String) row[6]);
		    album.setName((String) row[7]);
		    album.setDescription((String) row[8]);
		    song.setAlbum(album);
		    
//		    System.out.println("album" + album);
		    
		    Singer singer = new Singer();
		    singer.setId((String) row[9]);
		    singer.setName((String) row[10]);
		    singer.setStory((String) row[11]);
		    song.setSinger(singer);
		    
//		    System.out.println("singer" + singer);

		    mediaList.add(song);
		}
		return mediaList;
	}

	@Override
	public boolean deleteSong(String songId) {
		Session currentSession = sessionFactory.getCurrentSession();
		try {
			 Query query = currentSession.createQuery("Delete from Song where id=:id");
			 query.setParameter("id", songId);
			 query.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}		
	}
	
	@Override
	public List<Song> searchSong(String searchText) {
		Session currentSession = sessionFactory.getCurrentSession();
		List<Song> songs = (List<Song>) currentSession
			.createQuery("Select new Song(s.id, s.name, s.country, s.type, s.imageUrl, s.source) from Song s where s.name LIKE CONCAT('%', :searchText, '%')")
			.setParameter("searchText", searchText)
			.getResultList();
		return songs;
	}
}
