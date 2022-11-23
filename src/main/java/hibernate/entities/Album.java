package hibernate.entities;

import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name = "albums")
public class Album {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private String id;

	@Column(name = "name")
	private String name;

	@Column(name = "description")
	private String description;

	@Column(name = "imageFile")
	@Lob
	private MultipartFile imageFile;

	@Column(name = "imageUrl")
	private String imageUrl;

	@OneToMany(mappedBy = "album", cascade = CascadeType.ALL)
	@JsonManagedReference
	private List<Song> songs;

	public Album() {
	}

	public Album(String id) {
		this.id = id;
	}

	public Album(String name, String description) {
		this.name = name;
		this.description = description;
	}

	public Album(String id, String name, String description) {
		this.id = id;
		this.name = name;
		this.description = description;
	}
	
	public Album(String id, String name, String description, String imageUrl) {
		this.id = id;
		this.name = name;
		this.description = description;
		this.imageUrl = imageUrl;
	}

	public Album(String name, String description, MultipartFile imageFile) {
		this.name = name;
		this.imageFile = imageFile;
		this.description = description;
	}

	public Album(String name, String imageUrl, String description, List<Song> songs) {
		super();
		this.name = name;
		this.imageUrl = imageUrl;
		this.songs = songs;
		this.description = description;
	}

	public Album(String id, String name, String imageUrl, String description, List<Song> songs) {
		super();
		this.id = id;
		this.name = name;
		this.imageUrl = imageUrl;
		this.description = description;
		this.songs = songs;
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

	public List<Song> getSongs() {
		return songs;
	}

	public void setSongs(List<Song> songs) {
		this.songs = songs;
	}

	public MultipartFile getImageFile() {
		return imageFile;
	}

	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Album [id=" + id + ", name=" + name + ", description=" + description + ", imageFile=" + imageFile
				+ ", imageUrl=" + imageUrl + ", songs=" + songs + "]";
	}

}
