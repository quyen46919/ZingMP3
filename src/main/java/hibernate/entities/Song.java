package hibernate.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name="songs")
@Embeddable
public class Song {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	private String id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="country")
	private String country;
	
	@Column(name="type")
	private String type;
	
	@Column(name="image_url")
	private String imageUrl;

	@Column(name="source")
	private String source;
	
	@ManyToMany(mappedBy = "favoriteSongs")
	@JsonBackReference
	private Set<User> likes;
	
	@ManyToOne
	@JoinColumn(name="album_id", referencedColumnName = "id", nullable = true)
	private Album album;
	
	@ManyToOne
	@JoinColumn(name="singer_id", referencedColumnName = "id")
	private Singer singer;

	public Song() {}
	
	public Song(String id) {
		this.id = id;
	}

	public Song(String id, String name, String country, String type, String imageUrl, String source, Album album,
			Singer singer) {
		super();
		this.id = id;
		this.name = name;
		this.country = country;
		this.type = type;
		this.imageUrl = imageUrl;
		this.source = source;
		this.album = album;
		this.singer = singer;
	}
	
	public Song(String name, String country, String type, String imageUrl, String source) {
		super();
		this.name = name;
		this.country = country;
		this.type = type;
		this.imageUrl = imageUrl;
		this.source = source;
	}

	public Song(String name, String country, String type, String imageUrl, String source, Album album, Singer singer) {
		super();
		this.name = name;
		this.country = country;
		this.type = type;
		this.imageUrl = imageUrl;
		this.source = source;
		this.album = album;
		this.singer = singer;
	}

	public Song(String name, String country, String type, String imageUrl, String source, Singer singer) {
		super();
		this.name = name;
		this.country = country;
		this.type = type;
		this.imageUrl = imageUrl;
		this.source = source;
		this.singer = singer;
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

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Album getAlbum() {
		return album;
	}

	public void setAlbum(Album album) {
		this.album = album;
	}

	@Override
	public String toString() {
		return "Song [id=" + id + ", name=" + name + ", country=" + country + ", type=" + type + ", imageUrl="
				+ imageUrl + ", album=" + album + "]";
	}
	
}
