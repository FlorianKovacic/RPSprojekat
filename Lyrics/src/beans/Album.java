package beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class Album implements Serializable {

	private static final long serialVersionUID = -4945081127138500645L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String title;
	private Integer year;
	@OneToMany(mappedBy="album", fetch = FetchType.LAZY)
	List<Song> songs = new ArrayList<>();

	public Album() {
		super();
	}

	public Album(String title, Integer year) {
		super();
		this.title = title;
		this.year = year;
	}

	public Integer getId() {
		return id;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getYear() {
		return year;
	}
	public void setYear(Integer year) {
		this.year = year;
	}
	public List<Song> getSongs() {
		return songs;
	}
	public void setSongs(List<Song> songs) {
		this.songs = songs;
	}

	public void copyValues(Album other) {
		title = other.title;
		year = other.year;
		songs = other.songs;
	}

}
