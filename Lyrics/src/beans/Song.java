package beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id")
public class Song implements Serializable {

	private static final long serialVersionUID = 5727693416140022584L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String title;
	private String lyrics;
	@ManyToOne(fetch = FetchType.EAGER)
	private Performer performer;
	@ManyToOne(fetch = FetchType.EAGER)
	private Album album;
	@ManyToMany(fetch = FetchType.EAGER)
	private List<Author> musicBy = new ArrayList<>();
	@ManyToMany(fetch = FetchType.EAGER)
	private List<Author> lyricsBy = new ArrayList<>();

	public Song(String title) {
		this.title = title;
	}

	public Song() {
		super();
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

	public String getLyrics() {
		return lyrics;
	}

	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}

	public Performer getPerformer() {
		return performer;
	}

	public void setPerformer(Performer performer) {
		this.performer = performer;
	}

	public Album getAlbum() {
		return album;
	}

	public void setAlbum(Album album) {
		this.album = album;
	}

	public List<Author> getMusicBy() {
		return musicBy;
	}

	public void setMusicBy(List<Author> musicBy) {
		this.musicBy = musicBy;
	}

	public List<Author> getLyricsBy() {
		return lyricsBy;
	}

	public void setLyricsBy(List<Author> lyricsBy) {
		this.lyricsBy = lyricsBy;
	}

	public void copyValues(Song other) {
		title = other.title;
		lyrics = other.lyrics;
		/*performer = other.performer;
		album = other.album;
		musicBy = other.musicBy;
		lyricsBy = other.lyricsBy;*/
	}

}
