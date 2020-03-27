package session;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import auxiliary.Language;
import auxiliary.SearchCriteria;
import beans.Album;
import beans.Author;
import beans.Performer;
import beans.Song;
import beans.User;

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
		List<Song> result = em.createQuery("select distinct s from Song s left join fetch s.performer left join fetch s.album left join fetch s.uploader left join fetch s.musicBy", Song.class).getResultList();
		result = em.createQuery("select distinct s from Song s left join fetch s.lyricsBy", Song.class).getResultList();
		result = em.createQuery("select distinct s from Song s left join fetch s.comments", Song.class).getResultList();
		return result;
	}

	public Song getById(int id) {
		Song result = em.createQuery("select distinct s from Song s left join fetch s.performer left join fetch s.album left join fetch s.uploader left join fetch s.musicBy where s.id = :id", Song.class).setParameter("id", id).getSingleResult();
		result = em.createQuery("select distinct s from Song s left join fetch s.lyricsBy where s.id = :id", Song.class).setParameter("id", id).getSingleResult();
		result = em.createQuery("select distinct s from Song s left join fetch s.comments where s.id = :id", Song.class).setParameter("id", id).getSingleResult();
		return result;
	}

	public void save(Song s) {
		int albumId = s.getAlbum().getId();
		if(albumId != -1) {
			Album realAlbum = ab.getById(albumId);
			s.setAlbum(realAlbum);
			realAlbum.getSongs().add(s);
		} else {
			s.setAlbum(null);
		}

		int performerId = s.getPerformer().getId();
		if(performerId != -1) {
			Performer realPerformer = pb.getById(performerId);
			s.setPerformer(realPerformer);
		} else {
			s.setPerformer(null);
		}

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

		String username = s.getUploader().getUsername();
		User realUser = em.find(User.class, username);
		s.setUploader(realUser);
		realUser.getSongs().add(s);

		s.setApproved(false);

		em.persist(s);
	}

	public boolean update(Song s) {
		Song og = em.find(Song.class, s.getId());
		if(og != null) {
			og.copyValues(s);
			if(og.getAlbum().getId() == -1) {
				og.setAlbum(null);
			}
			if(s.getPerformer().getId() == -1) {
				og.setPerformer(null);
			}
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
		String lastPart = " order by s.title";
		TypedQuery<Song> query = em.createQuery(firstPart + centre + conditions + lastPart, Song.class);
		if(criteria != null) {
			query = query.setParameter("title", "%" + criteria.getTitle() + "%").setParameter("lyrics", "%" + criteria.getLyrics() + "%");
			if(!criteria.getPerformer().equals("")) {
				query = query.setParameter("performer", "%" + criteria.getPerformer() + "%");
			}
			if(!criteria.getAlbum().equals("")) {
				query = query.setParameter("album", "%" + criteria.getAlbum() + "%");
			}
			if(criteria.getLanguage() != Language.Any) {
				query = query.setParameter("language", criteria.getLanguage());
			}
		}
		return query.getResultList();
	}

	public List<Song> searchQuery(String conditions, SearchCriteria criteria) {
		String musicBy = "s.performer left join fetch s.album left join fetch s.uploader left join fetch s.musicBy";
		String lyricsBy = "s.lyricsBy";
		String comments = "s.comments";
		List<Song> result = createQueryAndGetResultList(musicBy, conditions, criteria);
		result = createQueryAndGetResultList(lyricsBy, conditions, criteria);
		result = createQueryAndGetResultList(comments, conditions, criteria);
		return result;
	}

	public List<Song> search(SearchCriteria criteria) {
		String conditions = " where s.approved = true and s.title like :title and s.lyrics like :lyrics";
		if(!criteria.getPerformer().equals("")) {
			conditions += " and s.performer.name like :performer";
		}
		if(!criteria.getAlbum().equals("")) {
			conditions += " and s.album.title like :album";
		}
		if(criteria != null && criteria.getLanguage() != Language.Any) {
			conditions += " and s.language = :language";
		}
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
