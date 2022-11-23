package hibernate.entities;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "songs")
@Embeddable
public class Song {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private String id;

	@Column(name = "name")
	private String name;

	@Column(name = "country")
	private String country;

	@Column(name = "type")
	private String type;

	@Column(name = "imageFile")
	@Lob
	private MultipartFile imageFile;

	@Column(name = "imageUrl")
	private String imageUrl;

	@Column(name = "sourceFile")
	@Lob
	private MultipartFile sourceFile;

	@Column(name = "source")
	private String source;

	@Column(name = "singerId", nullable = false)
	private String singerId;

	@Column(name = "albumId", nullable = false)
	private String albumId;

	@ManyToMany(mappedBy = "favoriteSongs")
	@JsonBackReference
	private Set<User> likes;

	@ManyToOne
	@JoinColumn(name = "albumId", referencedColumnName = "id", insertable = false, updatable = false)
	@JsonIgnore
	private Album album;

	@ManyToOne
	@JoinColumn(name = "singerId", referencedColumnName = "id", insertable = false, updatable = false)
	@JsonIgnore
	private Singer singer;

	public Song() {
	}

	public Song(String id) {
		this.id = id;
	}

	public Song(String name, String country, String type) {
		this.name = name;
		this.country = country;
		this.type = type;
	}

	public Song(String name, String country, String type, String imageUrl, String source) {
		super();
		this.name = name;
		this.country = country;
		this.type = type;
		this.imageUrl = imageUrl;
		this.source = source;
	}

	public Song(String id, String name, String country, String type, String imageUrl, String source) {
		super();
		this.id = id;
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

	public Song(String id, String name, String country, String type, String imageUrl, String source, Album album,
			Singer singer) {
		this.id = id;
		this.name = name;
		this.country = country;
		this.type = type;
		this.imageUrl = imageUrl;
		this.source = source;
		this.album = album;
		this.singer = singer;
	}

	public Song(String id, String name, String country, String type, String imageUrl, String source, String albumId,
			String singerId) {
		this.id = id;
		this.name = name;
		this.country = country;
		this.type = type;
		this.imageUrl = imageUrl;
		this.source = source;
		this.albumId = albumId;
		this.singerId = singerId;
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

	public MultipartFile getImageFile() {
		return imageFile;
	}

	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}

	public MultipartFile getSourceFile() {
		return sourceFile;
	}

	public void setSourceFile(MultipartFile sourceFile) {
		this.sourceFile = sourceFile;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public Set<User> getLikes() {
		return likes;
	}

	public void setLikes(Set<User> likes) {
		this.likes = likes;
	}

	public Singer getSinger() {
		return singer;
	}

	public void setSinger(Singer singer) {
		this.singer = singer;
	}

	public String getSingerId() {
		return singerId;
	}

	public void setSingerId(String singerId) {
		this.singerId = singerId;
	}

	public String getAlbumId() {
		return albumId;
	}

	public void setAlbumId(String albumId) {
		this.albumId = albumId;
	}

	@Override
	public String toString() {
		return "Song [id=" + id + ", name=" + name + ", country=" + country + ", type=" + type + ", imageUrl="
				+ imageUrl + ", album=" + album + "]";
	}

}
