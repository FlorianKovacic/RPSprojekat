package beans;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import auxiliary.Language;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.PropertyGenerator.class, property = "id", scope = Song.class)
public class Song implements Serializable {

	private static final long serialVersionUID = 5727693416140022584L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer id;
	private String title;
	private String lyrics;
	private Language language;
	private Boolean approved;
	@ManyToOne(fetch = FetchType.LAZY)
	private Performer performer;
	@ManyToOne(fetch = FetchType.LAZY)
	private Album album;
	@ManyToOne(fetch = FetchType.LAZY)
	private User uploader;
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "Music_by", joinColumns = {@JoinColumn(name="song_id")}, inverseJoinColumns= {@JoinColumn(name="author_id")})
	private List<Author> musicBy = new ArrayList<Author>();
	@ManyToMany(fetch = FetchType.LAZY)
	@JoinTable(name = "Lyrics_by", joinColumns = {@JoinColumn(name="song_id")}, inverseJoinColumns= {@JoinColumn(name="author_id")})
	private List<Author> lyricsBy = new ArrayList<Author>();
	@OneToMany(mappedBy = "song", fetch = FetchType.LAZY)
	private List<Comment> comments = new ArrayList<Comment>();

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

	public Language getLanguage() {
		return language;
	}

	public void setLanguage(Language language) {
		this.language = language;
	}

	public Boolean getApproved() {
		return approved;
	}

	public void setApproved(Boolean approved) {
		this.approved = approved;
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

	public User getUploader() {
		return uploader;
	}

	public void setUploader(User uploader) {
		this.uploader = uploader;
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

	public List<Comment> getComments() {
		return comments;
	}

	public void setComments(List<Comment> comments) {
		this.comments = comments;
	}

	public void copyValues(Song other) {
		title = other.title;
		lyrics = other.lyrics;
		language = other.language;
		performer = other.performer;
		album = other.album;
		musicBy = other.musicBy;
		lyricsBy = other.lyricsBy;
	}

	public void approve() {
		setApproved(true);
	}

}
