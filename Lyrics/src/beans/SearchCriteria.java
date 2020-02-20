package beans;

import java.util.List;

public class SearchCriteria {

	private String title;
	private String lyrics;
	private String album;
	private List<String> performers;

	public SearchCriteria() {
	}

	public SearchCriteria(String title, String lyrics, String album, List<String> performers) {
		this.title = title;
		this.lyrics = lyrics;
		this.album = album;
		this.performers = performers;
	}

	public String getTitle() {
		return title;
	}

	public String getLyrics() {
		return lyrics;
	}

	public String getAlbum() {
		return album;
	}

	public List<String> getPerformers() {
		return performers;
	}

}
