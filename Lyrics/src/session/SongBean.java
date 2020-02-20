package session;

import java.util.List;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import beans.Album;
import beans.SearchCriteria;
import beans.Song;

@Stateless
public class SongBean {

	@Inject
	AlbumBean ab;

	@PersistenceContext(name = "lyrics")
	EntityManager em;

	//@SuppressWarnings("unchecked")
	public List<Song> getAll() {
		List<Song> result = em.createQuery("select distinct s from Song s left join fetch s.musicBy", Song.class).getResultList();
		result = em.createQuery("select distinct s from Song s left join fetch s.lyricsBy", Song.class).getResultList();
		return result;
	}

	public Song getById(int id) {
		List<Song> result = em.createQuery("select distinct s from Song s left join fetch s.musicBy where s.id = :id", Song.class).setParameter("id", id).getResultList();
		result = em.createQuery("select distinct s from Song s left join fetch s.lyricsBy where s.id = :id", Song.class).setParameter("id", id).getResultList();
		return result.get(0);
		//return em.find(Song.class, id);
	}

	public void save(Song s) {
		int albumId = s.getAlbum().getId();
		Album realAlbum = ab.getById(albumId);
		s.setAlbum(realAlbum);
		realAlbum.getSongs().add(s);
		em.persist(s);
	}

	public void update(Song s) {
		Song og = em.find(Song.class, s.getId());
		og.copyValues(s);
		em.merge(og);
	}

	public void delete(int id) {
		Song s = em.find(Song.class, id);
		em.remove(s);
	}

	private List<Song> createQueryAndGetResult(String center, SearchCriteria c) {
		String commonPart1 = "select distinct s from Song s left join fetch ";
		String commonPart2 = " where s.title like :title and s.lyrics like :lyrics";
		return em.createQuery(commonPart1 + center + commonPart2, Song.class).setParameter("title", "%" + c.getTitle() + "%").setParameter("lyrics", "%" + c.getLyrics() + "%").getResultList();
	}

	public List<Song> search(SearchCriteria c) {
		String performers = "s.performers";
		String musicBy = "s.musicBy";
		String lyricsBy = "s.lyricsBy";
		List<Song> result = createQueryAndGetResult(performers, c);
		result = createQueryAndGetResult(musicBy, c);
		result = createQueryAndGetResult(lyricsBy, c);
		return result;
	}

}
