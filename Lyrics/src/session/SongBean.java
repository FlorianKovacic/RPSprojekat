package session;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import beans.Album;
import beans.Author;
import beans.Performer;
import beans.SearchCriteria;
import beans.Song;

@Stateless
public class SongBean {

	@Inject
	AlbumBean ab;
	@Inject
	PerformerBean pb;
	@Inject
	AuthorBean tb;

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

		int performerId = s.getPerformer().getId();
		Performer realPerformer = pb.getById(performerId);
		s.setPerformer(realPerformer);

		List<Author> musicBy = new ArrayList<Author>();
		for(Author composer: s.getMusicBy()) {
			int composerId = composer.getId();
			Author realComposer = tb.getById(composerId);
			musicBy.add(realComposer);
		}
		s.setMusicBy(musicBy);

		List<Author>lyricsBy = new ArrayList<Author>();
		for(Author lyricsWriter: s.getLyricsBy()) {
			int lyricsWriterId = lyricsWriter.getId();
			Author realLyricsWriter = tb.getById(lyricsWriterId);
			lyricsBy.add(realLyricsWriter);
		}
		s.setLyricsBy(lyricsBy);

		s.setApproved(false);

		em.persist(s);
	}

	public boolean update(Song s) {
		Song og = em.find(Song.class, s.getId());
		if(og != null) {
			og.copyValues(s);
			em.merge(og);
			return true;
		} else {
			return false;
		}
	}

	public boolean delete(int id) {
		Song s = em.find(Song.class, id);
		if(s != null) {
			em.remove(s);
			return true;
		} else {
			return false;
		}
	}

	private List<Song> createQueryAndGetResultList(String centre, String conditions, SearchCriteria criteria) {
		String firstPart = "select distinct s from Song s left join fetch ";
		TypedQuery<Song> query = em.createQuery(firstPart + centre + conditions, Song.class);
		if(criteria != null) {
			query = query.setParameter("title", "%" + criteria.getTitle() + "%").setParameter("lyrics", "%" + criteria.getLyrics() + "%");
		}
		return query.getResultList();
	}

	public List<Song> searchQuery(String conditions, SearchCriteria criteria) {
		String musicBy = "s.performer left join fetch s.album left join fetch s.musicBy";
		String lyricsBy = "s.lyricsBy";
		String comments = "s.comments";
		List<Song> result = createQueryAndGetResultList(musicBy, conditions, criteria);
		result = createQueryAndGetResultList(lyricsBy, conditions, criteria);
		result = createQueryAndGetResultList(comments, conditions, criteria);
		return result;
	}

	public List<Song> search(SearchCriteria criteria) {
		String conditions = " where s.approved = true and s.title like :title and s.lyrics like :lyrics";
		return searchQuery(conditions, criteria);
	}

	public boolean approve(int id) {
		Song s = em.find(Song.class, id);
		if(s != null) {
			s.approve();
			return true;
		} else {
			return false;
		}
	}

	public List<Song> getPending() {
		String conditions = " where s.approved = false";
		return searchQuery(conditions, null);
	}

}
