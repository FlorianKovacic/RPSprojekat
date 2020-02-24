package session;

import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import beans.Album;

@Stateless
public class AlbumBean {

	@PersistenceContext(name = "lyrics")
	EntityManager em;

	public List<Album> getAll() {
		return (List<Album>) em.createQuery("select a from Album a left join fetch a.songs", Album.class).getResultList();
	}

	public Album getById(int id) {
		return em.createQuery("select a from Album a left join fetch a.songs where a.id = :id", Album.class).setParameter("id", id).getSingleResult();
	}

	public void save(Album a) {
		em.persist(a);
	}

	public void update(Album a) {
		Album og = em.find(Album.class, a.getId());
		og.copyValues(a);
		em.merge(og);
	}

	public void delete(int id) {
		Album a = em.find(Album.class, id);
		em.remove(a);
	}

}
