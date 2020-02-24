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

	public List<Song> getAll() {
		List<Song> result = em.createQuery("select distinct s from Song s left join fetch s.performer left join fetch s.album left join fetch s.musicBy", Song.class).getResultList();
		result = em.createQuery("select distinct s from Song s left join fetch s.lyricsBy", Song.class).getResultList();
		result = em.createQuery("select distinct s from Song s left join fetch s.comments", Song.class).getResultList();
		return result;
	}

	public Song getById(int id) {
		Song result = em.createQuery("select distinct s from Song s left join fetch s.performer left join fetch s.album left join fetch s.musicBy where s.id = :id", Song.class).setParameter("id", id).getSingleResult();
		result = em.createQuery("select distinct s from Song s left join fetch s.lyricsBy where s.id = :id", Song.class).setParameter("id", id).getSingleResult();
		result = em.createQuery("select distinct s from Song s left join fetch s.comments where s.id = :id", Song.class).setParameter("id", id).getSingleResult();
		return result;
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

	public List<Song> search(SearchCriteria c) {
		List<Song> result = em.createQuery("select distinct s from Song s where s.title like :title and s.lyrics like :lyrics", Song.class).setParameter("title", "%" + c.getTitle() + "%").setParameter("lyrics", "%" + c.getLyrics() + "%").getResultList();
		return result;
	}

}
