//package hibernate.controllers;
//
//import java.util.HashSet;
//import java.util.Set;
//
//import org.hibernate.Session;
//import org.hibernate.SessionFactory;
//import org.hibernate.cfg.Configuration;
//
//import hibernate.entities.Album;
//import hibernate.entities.Singer;
//import hibernate.entities.Song;
//import hibernate.entities.User;
//import hibernate.entities.UserSong;
//
//public class TestSongAlbum {
//	public static void main(String[] args) {
//		// TODO Auto-generated method stub
//		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml")
//				.addAnnotatedClass(User.class)
//				.addAnnotatedClass(Song.class)
//				.addAnnotatedClass(Album.class)
//				.addAnnotatedClass(Singer.class)
//				.addAnnotatedClass(UserSong.class)
//				.buildSessionFactory();
//		Session session = factory.getCurrentSession();
//		try {
//			Album PMQAlbum = new Album("Tuyển tập nhạc của Phan Mạnh Quỳnh",
//					"https://photo-playlist-zmp3.zmdcdn.me/v2/mixartist?src=HavwqN7EzbiAH2wA9yxoIL4KSyyddl8RKKHgocoS_1i0G6FEOPp-6013OCexpgrA1Xmqo6x3-1bM1ZpPQC--IqL1Q8y-aEHl3nea_niGCEuiaxuF09ch33SQ9y4&cv=1&size=thumb/240_240");
//
//			Singer phanManhQuynh = new Singer("Phan Mạnh Quỳnh",
//					"https://i.scdn.co/image/ab6761610000e5ebc734af8e81f0119a6380c5e4",
//					"Phan Mạnh Quỳnh (sinh ngày 10 tháng 1 năm 1990) là một ca sĩ kiêm nhạc sĩ của Việt Nam. Anh giành được một đề cử Cống hiến cho bài "
//							+ "\"Huyền thoại\" năm 2019.");
//
//			Song song1 = new Song("Sao cha không (Bố già OST)", "Việt Nam", "MV",
//					"https://photo-resize-zmp3.zmdcdn.me/w240_r1x1_webp/cover/f/3/1/e/f31efb0da9bc984d7246866e6d529d78.jpg",
//					"https://res.cloudinary.com/dlq6za9et/video/upload/v1668190633/zingmp3/sao-cha-khong_jjelpq.mp4",
//					PMQAlbum, phanManhQuynh);
//
//			Set<Song> PMQSongList = new HashSet<Song>();
//			PMQSongList.add(song1);
//			PMQAlbum.setSongs(PMQSongList);
//			
//			session.beginTransaction();
//			session.save(phanManhQuynh);
//			session.save(PMQAlbum);
//			session.save(song1);
//			session.getTransaction().commit();
//			System.out.println("Done");
//		} finally {
//			session.close();
//			factory.close();
//		}
//	}
//
//}
