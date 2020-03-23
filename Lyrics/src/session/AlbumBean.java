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
		return em.createQuery("select distinct a from Album a left join fetch a.songs order by a.title", Album.class).getResultList();
	}

	public Album getById(int id) {
		return em.createQuery("select a from Album a left join fetch a.songs where a.id = :id", Album.class).setParameter("id", id).getSingleResult();
	}

	public void save(Album a) {
		em.persist(a);
	}

	public boolean update(Album a) {
		Album og = em.find(Album.class, a.getId());
		if(og != null) {
			og.copyValues(a);
			em.merge(og);
			return true;
		} else {
			return false;
		}
	}

	public boolean delete(int id) {
		Album a = em.find(Album.class, id);
		if(a != null) {
			em.remove(a);
			return true;
		} else {
			return false;
		}
	}

}
