package hibernate.controllers;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import hibernate.entities.Album;
import hibernate.entities.Singer;
import hibernate.entities.Song;
import hibernate.entities.User;
import hibernate.entities.UserSong;


public class TestUserSong {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SessionFactory factory = new Configuration()
				.configure("hibernate.cfg.xml")
				.addAnnotatedClass(User.class)
				.addAnnotatedClass(Song.class)
				.addAnnotatedClass(Album.class)
				.addAnnotatedClass(Singer.class)
				.addAnnotatedClass(UserSong.class)
				.buildSessionFactory();
		Session session = factory.getCurrentSession();
		try {


			// create a student object
			User user = new User("quyen1@gmail.com", "123123123", 1);
			// save the student object
			System.out.println("Saving..");
			
			UserSong song1 = new UserSong(
				"Phan Mạnh Quỳnh", 
				"Có chàng trai viết lên cây",
				"https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/covers/f/f/ffd96dc18d252825cb591e255ddc6dbd_1513860881.jpg", 
				"https://res.cloudinary.com/dlq6za9et/video/upload/v1668188238/zingmp3/phan-manh-quynh-audio-lyric-official_iaxbg6.mp3",
				user
			);
			
			Set<UserSong> userSongList = new HashSet<UserSong>();
			userSongList.add(song1);
			user.setUserSongs(userSongList);
			session.beginTransaction();
			session.save(user);
			session.getTransaction().commit();
			System.out.println("Done");
		} finally {
			session.close();
			factory.close();
		}
	}

}
