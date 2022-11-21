package hibernate.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name="users")
public class User {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private String password;
	
	@Column(name="role")
	private int role;
	
	@ManyToMany(cascade = CascadeType.ALL)
	@JoinTable(
			name="user_favorite_songs", 
			joinColumns = @JoinColumn(name ="userId") , 
			inverseJoinColumns = @JoinColumn(name ="songId")
	)
	@JsonManagedReference
	private Set<Song> favoriteSongs;
	
	@OneToMany(mappedBy = "user", cascade = CascadeType.ALL)
	@JsonManagedReference
	private Set<UserSong> userSongs;
	
	public User() {}
	
	public User(String id) {
		this.id = id;
	}

	public User(String id, String email, String password, int role, Set<UserSong> userSongs) {
		super();
		this.id = id;
		this.email = email;
		this.password = password;
		this.role = role;
		this.userSongs = userSongs;
	}

	public User(String email, String password, int role, Set<UserSong> userSongs) {
		super();
		this.email = email;
		this.password = password;
		this.role = role;
		this.userSongs = userSongs;
	}
	
	public User(String email, String password, int role) {
		this.email = email;
		this.password = password;
		this.role = role;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public Set<UserSong> getUserSongs() {
		return userSongs;
	}

	public void setUserSongs(Set<UserSong> userSongs) {
		this.userSongs = userSongs;
	}
	
	public Set<Song> getFavoriteSongs() {
		return favoriteSongs;
	}

	public void setFavoriteSongs(Set<Song> favoriteSongs) {
		this.favoriteSongs = favoriteSongs;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", email=" + email + ", password=" + password + ", userSongs=" + userSongs + "]";
	}
	
	
}
