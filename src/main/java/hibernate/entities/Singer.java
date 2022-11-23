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
@Table(name = "singers")
public class Singer {
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;

	@Column(name = "name")
	private String name;

	@Column(name = "imageFile")
	@Lob
	private MultipartFile imageFile;

	@Column(name = "imageUrl")
	private String imageUrl;

	@Column(name = "story")
	private String story;

	@OneToMany(mappedBy = "singer", cascade = CascadeType.ALL)
	@JsonManagedReference
	private List<Song> songs;

	public Singer() {
	}

	public Singer(String id) {
		this.id = id;
	}

	public Singer(String name, String story) {
		this.name = name;
		this.story = story;
	}

	public Singer(String id, String name, String story) {
		this.id = id;
		this.name = name;
		this.story = story;
	}

	public Singer(String id, String name, String story, String imageUrl) {
		this.id = id;
		this.name = name;
		this.story = story;
		this.imageUrl = imageUrl;
	}

	public Singer(String name, String imageUrl, String story, List<Song> songs) {
		super();
		this.name = name;
		this.imageUrl = imageUrl;
		this.story = story;
		this.songs = songs;
	}

	public Singer(String id, String name, String imageUrl, String story, List<Song> songs) {
		this.id = id;
		this.name = name;
		this.imageUrl = imageUrl;
		this.story = story;
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

	public MultipartFile getImageFile() {
		return imageFile;
	}

	public void setImageFile(MultipartFile imageFile) {
		this.imageFile = imageFile;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getStory() {
		return story;
	}

	public void setStory(String story) {
		this.story = story;
	}

	public List<Song> getSongs() {
		return songs;
	}

	public void setSongs(List<Song> songs) {
		this.songs = songs;
	}

	@Override
	public String toString() {
		return "Singer [id=" + id + ", name=" + name + ", imageUrl=" + imageUrl + ", story=" + story + ", songs="
				+ songs + "]";
	}

}
