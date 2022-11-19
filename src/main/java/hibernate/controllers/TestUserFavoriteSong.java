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

public class TestUserFavoriteSong {

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
			session.beginTransaction();
			User user = new User("quyen1@gmail.com", "123123123", 1);
			Song song1 = new Song("Sao cha không (Bố già OST)", "Việt Nam", "MV",
					"https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/cover/f/3/1/e/f31efb0da9bc984d7246866e6d529d78.jpg",
					"https://res.cloudinary.com/dlq6za9et/video/upload/v1668190633/zingmp3/sao-cha-khong_jjelpq.mp4");

			Set<Song> favoriteSongs = new HashSet<>();
			favoriteSongs.add(song1);

			user.setFavoriteSongs(favoriteSongs);
			session.save(user);
			session.getTransaction().commit();
			System.out.println("Done");
		} finally {
			session.close();
			factory.close();
		}
	}

}
