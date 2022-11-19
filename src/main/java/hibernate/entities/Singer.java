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
@Table(name="singers")
public class Singer {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private String id;
	
	@Column(name="name")
	private String name;
	
	@Column(name="image_url")
	private String imageUrl;
	
	@Column(name="story")
	private String story;
	
	@OneToMany(mappedBy = "singer", cascade = CascadeType.ALL)
	@JsonManagedReference
	private Set<Song> songs;

	public Singer() {}
	
	public Singer(String id, String name, String imageUrl, String story, Set<Song> songs) {
		this.id = id;
		this.name = name;
		this.imageUrl = imageUrl;
		this.story = story;
		this.songs = songs;
	}

	public Singer(String name, String imageUrl, String story, Set<Song> songs) {
		super();
		this.name = name;
		this.imageUrl = imageUrl;
		this.story = story;
		this.songs = songs;
	}

	public Singer(String name, String imageUrl, String story) {
		super();
		this.name = name;
		this.imageUrl = imageUrl;
		this.story = story;
	}

	@Override
	public String toString() {
		return "Singer [id=" + id + ", name=" + name + ", imageUrl=" + imageUrl + ", story=" + story + ", songs="
				+ songs + "]";
	}
	
}
