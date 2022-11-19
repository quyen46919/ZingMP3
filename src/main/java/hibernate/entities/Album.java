package hibernate.entities;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name="albums")
public class Album {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private String id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="image_url")
	private String imageUrl;
	
	@OneToMany(mappedBy = "album", cascade = CascadeType.ALL)
	@JsonManagedReference
	private Set<Song> songs;

	public Album() {}

	public Album(String id, String name, String imageUrl, Set<Song> songs) {
		super();
		this.id = id;
		this.name = name;
		this.imageUrl = imageUrl;
		this.songs = songs;
	}

	public Album(String name, String imageUrl, Set<Song> songs) {
		super();
		this.name = name;
		this.imageUrl = imageUrl;
		this.songs = songs;
	}

	public Album(String name, String imageUrl) {
		super();
		this.name = name;
		this.imageUrl = imageUrl;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Set<Song> getSongs() {
		return songs;
	}

	public void setSongs(Set<Song> songs) {
		this.songs = songs;
	}

	@Override
	public String toString() {
		return "Album [id=" + id + ", name=" + name + ", imageUrl=" + imageUrl + ", songs=" + songs + "]";
	}
	
	
}
