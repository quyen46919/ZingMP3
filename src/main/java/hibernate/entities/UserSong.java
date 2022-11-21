package hibernate.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="user_songs")
public class UserSong {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="singer")
	private String singer;
	
	@Column(name="imageUrl")
	private String imageUrl;
	
	@Column(name="source")
	private String source;
	
	@ManyToOne
	@JoinColumn(name="userId", referencedColumnName = "id")
	private User user;
	
	public UserSong() {}

	public UserSong(int id, String singer, String name, String imageUrl, String source, User user) {
		super();
		this.id = id;
		this.singer = singer;
		this.imageUrl = imageUrl;
		this.source = source;
		this.user = user;
		this.name = name;
	}

	public UserSong(String singer, String name, String imageUrl, String source, User user) {
		super();
		this.singer = singer;
		this.imageUrl = imageUrl;
		this.source = source;
		this.user = user;
		this.name = name;
	}

	public UserSong(String singer, String name, String imageUrl, String source) {
		super();
		this.singer = singer;
		this.imageUrl = imageUrl;
		this.source = source;
		this.name = name;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSinger() {
		return singer;
	}

	public void setSinger(String singer) {
		this.singer = singer;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "UserSong [id=" + id + ", singer=" + singer + ", imageUrl=" + imageUrl + ", source=" + source + ", user="
				+ user + "]";
	}

	
}
