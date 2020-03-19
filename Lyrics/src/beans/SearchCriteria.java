package beans;

import auxiliary.Language;

public class SearchCriteria {

	private String title;
	private String lyrics;
	private Language language;
	private String performer;
	private String album;

	public SearchCriteria() {
	}

	public SearchCriteria(String title, String lyrics, Language language, String album, String performer) {
		this.title = title;
		this.lyrics = lyrics;
		this.language = language;
		this.performer = performer;
		this.album = album;
	}

	public String getTitle() {
		return title;
	}

	public String getLyrics() {
		return lyrics;
	}

	public Language getLanguage() {
		return language;
	}

	public String getPerformer() {
		return performer;
	}

	public String getAlbum() {
		return album;
	}

}
